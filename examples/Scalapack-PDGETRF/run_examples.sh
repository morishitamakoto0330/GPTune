#!/bin/bash
cd ../../
. run_env.sh
cd -

# $MPIRUN -n 8 ./scalapack-driver/bin/pdludriver /Users/makotomorishita/Desktop/LBNL/GPTune/examples/Scalapack-PDGETRF/scalapack-driver/exp/mac/GPTune/0/
# exit

# the following examples only work with openmpi
if [[ $ModuleEnv == *"openmpi"* ]]; then
if [[ -z "${GPTUNE_LITE_MODE}" ]]; then
    cd $GPTUNEROOT/examples/Scalapack-PDGETRF
    rm -rf gptune.db/*.json # do not load any database 
    tp=PDGETRF
    app_json=$(echo "{\"tuning_problem_name\":\"$tp\"")
    echo "$app_json$machine_json$software_json$loadable_machine_json$loadable_software_json}" | jq '.' > .gptune/meta.json

    $MPIRUN --oversubscribe --allow-run-as-root --mca pmix_server_max_wait 3600 --mca pmix_base_exchange_timeout 3600 --mca orte_abort_timeout 3600 --mca plm_rsh_no_tree_spawn true -n 1  python ./scalapack_MLA.py -nmax 2000 -nprocmin_pernode 1 -ntask 2 -nrun 20 -machine cori -jobid 0 -tla_I 0 -tla_II 0
    # $MPIRUN --oversubscribe --allow-run-as-root --mca pmix_server_max_wait 3600 --mca pmix_base_exchange_timeout 3600 --mca orte_abort_timeout 3600 --mca plm_rsh_no_tree_spawn true -n 1  python ./scalapack_MLA.py -mmax 1000 -nmax 1000 -nprocmin_pernode 1 -ntask 2 -nrun 20 -machine cori -jobid 0 -tla_I 1 -tla_II 0
    # $MPIRUN --oversubscribe --allow-run-as-root --mca pmix_server_max_wait 3600 --mca pmix_base_exchange_timeout 3600 --mca orte_abort_timeout 3600 --mca plm_rsh_no_tree_spawn true -n 1  python ./scalapack_MLA.py -mmax 1000 -nmax 1000 -nprocmin_pernode 1 -ntask 2 -nrun 20 -machine cori -jobid 0 -tla_I 0 -tla_II 1
else
    echo "GPTUNE_LITE_MODE cannot run MPI_spawn invoked applications"
fi
fi

## use the following command if you want to try sensitivity analysis.
# python scalapack_sensitivity_analysis.py

