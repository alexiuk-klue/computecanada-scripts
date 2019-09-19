This repository contains my tested/working submission scripts for running jobs at Compute Canada servers (mostly tested on Cedar).

**Minimal iformation needed to run analyses on Compute Canada**

To connect to Cedar:

```ssh yourUsername@cedar.computecanada.ca```

Jobs have to be run from /home/yourUsername/scratch:

```cd scratch```

To submit a job:

```sbatch job_script.sh```

To see info about your pending or running jobs:

```squeue -u yourUsername```

To see info about pending or running jobs of our group:

```squeue --account=def-keeling_cpu```

Too see usage information of your past jobs:

```sacct -j jobid```

**Useful websites**

More info on how to run jobs: [https://docs.computecanada.ca/wiki/Running_jobs].

Available software:  [https://docs.computecanada.ca/wiki/Available_software].

Available computational resource (Cedar): [https://docs.computecanada.ca/wiki/Cedar].

Job scheduling policies: [https://docs.computecanada.ca/wiki/Job_scheduling_policies].


**Scripts available from this repository**

IQ-TREE: iqtree_LG_C60_F_G4.sh

PhyloBayes: pbmpi_CAT_GTR_G4_chain1.sh

MrBayes:

SPAdes:

Bowtie2:

Trinity:

Blast+
