bioawk -c gff '$feature=="transcript" {print $group}' < \(gunzip -c gencode.v32.primary_assembly.annotation.gtf.gz\) | awk -F ' ' '{print substr\($4,2,length\($4\)-3\) "\t" substr\($2,2,length\($2\)-3\)}' - > txp2gene.tsv

