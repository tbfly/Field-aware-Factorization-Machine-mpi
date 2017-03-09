#!/bin/bash
process_number=6
#Ip=("10.101.2.89" "10.101.2.90")
#for ip in ${Ip[@]}
#do
#    ssh worker@$ip rm /home/worker/xiaoshu/Field-aware-Factorization-Machine-ftrl-mpi/ffm_ftrl_mpi
#    scp config.h worker@$ip:/home/worker/xiaoshu/Field-aware-Factorization-Machine-ftrl-mpi/
#    scp ffm_ftrl_mpi worker@$ip:/home/worker/xiaoshu/Field-aware-Factorization-Machine-ftrl-mpi/
#done

#mpirun -f ./hosts -np $process_number ./ffm_ftrl_mpi ftrl epoch=10 batch_size=500 bias=0.0 alpha=0.1 beta=1.0 lambda1=0.001 lambda2=0.0 fea_dim=240000 factor=2 group=68 isffm=0 isfm=0 islr=1 ./data/ffm_train ./data/ffm_test
#mpirun -f ./hosts -np $process_number ./ffm_ftrl_mpi ftrl epoch=1000 batch_size=500 bias=0.0 alpha=0.1 beta=1.0 lambda1=0.001 lambda2=0.0 factor=2 group=68 isffm=0 isfm=1 islr=0 ./data/n2n_train ./data/n2n_test
#mpirun -f ./hosts -np $process_number ./ffm_ftrl_mpi ftrl epoch=1000 batch_size=500 bias=0.0 alpha=0.1 beta=1.0 lambda1=0.001 lambda2=0.0 fea_dim=240000 factor=20 group=68 isffm=0 isfm=1 islr=0 ./data/v2v_train ./data/v2v_test --flagfile=config.h
#mpirun -f ./hosts -np $process_number ./ffm_ftrl_mpi ftrl --flagfile=config.h
mpirun --allow-run-as-root -np $process_number ./ffm_mpi ftrl --flagfile=config.h

