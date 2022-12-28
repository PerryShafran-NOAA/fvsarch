#!/bin/sh
#

set -x

module purge
module load envvar/1.0
module load PrgEnv-intel/8.1.0
module load intel/19.1.3.304
module load craype/2.7.13
module load cray-mpich/8.1.7
module load prod_util/2.0.10
module load prod_envir/2.0.6

cd /lfs/h2/emc/vpppg/noscrub/perry.shafran/utils
qsub /lfs/h2/emc/vpppg/noscrub/perry.shafran/utils/runtarvsdb_newbatch_fromopsdirs
