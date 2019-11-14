#!/bin/bash
#SBATCH -p edwards
#SBATCH -n 32
#SBATCH -N 1
#SBATCH --mem 128000
#SBATCH -t 0-36:00
#SBATCH -J Picard-add
#SBATCH -o Picard-addCode_%j.out
#SBATCH -e Picard-addCode_%j.err
#SBATCH --mail-type=ALL        # Type of email notification- BEGIN,END,FAIL,ALL
#SBATCH --mail-user=ftermignoni@fas.harvard.edu # Email to which notifications will be sent

module load centos6/0.0.1-fasrc01
module load java/1.8.0_45-fasrc01
module load jdk/1.8.0_45-fasrc01
module load gatk/4.0.2.1-fasrc01
module load samtools/1.5-fasrc02
module load picard/2.9.0-fasrc01

PICPATH=/n/scratchlfs/edwards_lab/ftermignoni/picard/build/libs/picard.jar

cd /n/scratchlfs/edwards_lab/ftermignoni/Jclark-reseq/DATA-bam

java -Xmx128g -XX:ParallelGCThreads=32 -jar $PICPATH AddOrReplaceReadGroups I=HC2HMDSXX.4.ACGGTC.unmapped.1.fastq.gz.Cathmin.aln.sin.sam.add.bam O=sample.ACGGTC.alg.Cathmin.code.bam RGID=@A00442:HC2HMDSXX181119 RGLB=lib1 RGPL=ILLUMINA RGPU=HC2HMDSXX:4:1101 RGSM=ACGGTC
java -Xmx128g -XX:ParallelGCThreads=32 -jar $PICPATH AddOrReplaceReadGroups I=HC2HMDSXX.4.AGACCA.unmapped.1.fastq.gz.Cathmin.aln.sin.sam.add.bam O=sample.AGACCA.alg.Cathmin.code.bam RGID=@A00442:HC2HMDSXX181119 RGLB=lib2 RGPL=ILLUMINA RGPU=HC2HMDSXX:4:1101 RGSM=AGACCA
java -Xmx128g -XX:ParallelGCThreads=32 -jar $PICPATH AddOrReplaceReadGroups I=HC2HMDSXX.4.AGATCC.unmapped.1.fastq.gz.Cathmin.aln.sin.sam.add.bam O=sample.AGATCC.alg.Cathmin.code.bam RGID=@A00442:HC2HMDSXX181119 RGLB=lib3 RGPL=ILLUMINA RGPU=HC2HMDSXX:4:1101 RGSM=AGATCC
java -Xmx128g -XX:ParallelGCThreads=32 -jar $PICPATH AddOrReplaceReadGroups I=HC2HMDSXX.4.AGCTTT.unmapped.1.fastq.gz.Cathmin.aln.sin.sam.add.bam O=sample.AGCTTT.alg.Cathmin.code.bam RGID=@A00442:HC2HMDSXX181119 RGLB=lib4 RGPL=ILLUMINA RGPU=HC2HMDSXX:4:1101 RGSM=AGCTTT
java -Xmx128g -XX:ParallelGCThreads=32 -jar $PICPATH AddOrReplaceReadGroups I=HC2HMDSXX.4.AGGTAC.unmapped.1.fastq.gz.Cathmin.aln.sin.sam.add.bam O=sample.AGGTAC.alg.Cathmin.code.bam RGID=@A00442:HC2HMDSXX181119 RGLB=lib5 RGPL=ILLUMINA RGPU=HC2HMDSXX:4:1101 RGSM=AGGTAC
java -Xmx128g -XX:ParallelGCThreads=32 -jar $PICPATH AddOrReplaceReadGroups I=HC2HMDSXX.4.ATCCGC.unmapped.1.fastq.gz.Cathmin.aln.sin.sam.add.bam O=sample.ATCCGC.alg.Cathmin.code.bam RGID=@A00442:HC2HMDSXX181119 RGLB=lib6 RGPL=ILLUMINA RGPU=HC2HMDSXX:4:1101 RGSM=ATCCGC
java -Xmx128g -XX:ParallelGCThreads=32 -jar $PICPATH AddOrReplaceReadGroups I=HC2HMDSXX.4.ATGACT.unmapped.1.fastq.gz.Cathmin.aln.sin.sam.add.bam O=sample.ATGACT.alg.Cathmin.code.bam RGID=@A00442:HC2HMDSXX181119 RGLB=lib7 RGPL=ILLUMINA RGPU=HC2HMDSXX:4:1101 RGSM=ATGACT
java -Xmx128g -XX:ParallelGCThreads=32 -jar $PICPATH AddOrReplaceReadGroups I=HC2HMDSXX.4.ATTGTA.unmapped.1.fastq.gz.Cathmin.aln.sin.sam.add.bam O=sample.ATTGTA.alg.Cathmin.code.bam RGID=@A00442:HC2HMDSXX181119 RGLB=lib8 RGPL=ILLUMINA RGPU=HC2HMDSXX:4:1101 RGSM=ATTGTA
java -Xmx128g -XX:ParallelGCThreads=32 -jar $PICPATH AddOrReplaceReadGroups I=HC2HMDSXX.4.ATTTCG.unmapped.1.fastq.gz.Cathmin.aln.sin.sam.add.bam O=sample.ATTTCG.alg.Cathmin.code.bam RGID=@A00442:HC2HMDSXX181119 RGLB=lib9 RGPL=ILLUMINA RGPU=HC2HMDSXX:4:1101 RGSM=ATTTCG
java -Xmx128g -XX:ParallelGCThreads=32 -jar $PICPATH AddOrReplaceReadGroups I=HC2HMDSXX.4.CAGCTT.unmapped.1.fastq.gz.Cathmin.aln.sin.sam.add.bam O=sample.CAGCTT.alg.Cathmin.code.bam RGID=@A00442:HC2HMDSXX181119 RGLB=lib10 RGPL=ILLUMINA RGPU=HC2HMDSXX:4:1101 RGSM=CAGCTT
java -Xmx128g -XX:ParallelGCThreads=32 -jar $PICPATH AddOrReplaceReadGroups I=HC2HMDSXX.4.CAGTGT.unmapped.1.fastq.gz.Cathmin.aln.sin.sam.add.bam O=sample.CAGTGT.alg.Cathmin.code.bam RGID=@A00442:HC2HMDSXX181119 RGLB=lib11 RGPL=ILLUMINA RGPU=HC2HMDSXX:4:1101 RGSM=CAGTGT
java -Xmx128g -XX:ParallelGCThreads=32 -jar $PICPATH AddOrReplaceReadGroups I=HC2HMDSXX.4.CCATGT.unmapped.1.fastq.gz.Cathmin.aln.sin.sam.add.bam O=sample.CCATGT.alg.Cathmin.code.bam RGID=@A00442:HC2HMDSXX181119 RGLB=lib12 RGPL=ILLUMINA RGPU=HC2HMDSXX:4:1101 RGSM=CCATGT
java -Xmx128g -XX:ParallelGCThreads=32 -jar $PICPATH AddOrReplaceReadGroups I=HC2HMDSXX.4.CGCTAC.unmapped.1.fastq.gz.Cathmin.aln.sin.sam.add.bam O=sample.CGCTAC.alg.Cathmin.code.bam RGID=@A00442:HC2HMDSXX181119 RGLB=lib13 RGPL=ILLUMINA RGPU=HC2HMDSXX:4:1101 RGSM=CGCTAC
java -Xmx128g -XX:ParallelGCThreads=32 -jar $PICPATH AddOrReplaceReadGroups I=HC2HMDSXX.4.CTCACG.unmapped.1.fastq.gz.Cathmin.aln.sin.sam.add.bam O=sample.CTCACG.alg.Cathmin.code.bam RGID=@A00442:HC2HMDSXX181119 RGLB=lib14 RGPL=ILLUMINA RGPU=HC2HMDSXX:4:1101 RGSM=CTCACG
java -Xmx128g -XX:ParallelGCThreads=32 -jar $PICPATH AddOrReplaceReadGroups I=HC2HMDSXX.4.CTGAAA.unmapped.1.fastq.gz.Cathmin.aln.sin.sam.add.bam O=sample.CTGAAA.alg.Cathmin.code.bam RGID=@A00442:HC2HMDSXX181119 RGLB=lib15 RGPL=ILLUMINA RGPU=HC2HMDSXX:4:1101 RGSM=CTGAAA
java -Xmx128g -XX:ParallelGCThreads=32 -jar $PICPATH AddOrReplaceReadGroups I=HC2HMDSXX.4.CTGGCC.unmapped.1.fastq.gz.Cathmin.aln.sin.sam.add.bam O=sample.CTGGCC.alg.Cathmin.code.bam RGID=@A00442:HC2HMDSXX181119 RGLB=lib16 RGPL=ILLUMINA RGPU=HC2HMDSXX:4:1101 RGSM=CTGGCC
java -Xmx128g -XX:ParallelGCThreads=32 -jar $PICPATH AddOrReplaceReadGroups I=HC2HMDSXX.4.GACTCA.unmapped.1.fastq.gz.Cathmin.aln.sin.sam.add.bam O=sample.GACTCA.alg.Cathmin.code.bam RGID=@A00442:HC2HMDSXX181119 RGLB=lib17 RGPL=ILLUMINA RGPU=HC2HMDSXX:4:1101 RGSM=GACTCA
java -Xmx128g -XX:ParallelGCThreads=32 -jar $PICPATH AddOrReplaceReadGroups I=HC2HMDSXX.4.GGAACT.unmapped.1.fastq.gz.Cathmin.aln.sin.sam.add.bam O=sample.GGAACT.alg.Cathmin.code.bam RGID=@A00442:HC2HMDSXX181119 RGLB=lib18 RGPL=ILLUMINA RGPU=HC2HMDSXX:4:1101 RGSM=GGAACT
java -Xmx128g -XX:ParallelGCThreads=32 -jar $PICPATH AddOrReplaceReadGroups I=HC2HMDSXX.4.GGACGG.unmapped.1.fastq.gz.Cathmin.aln.sin.sam.add.bam O=sample.GGACGG.alg.Cathmin.code.bam RGID=@A00442:HC2HMDSXX181119 RGLB=lib19 RGPL=ILLUMINA RGPU=HC2HMDSXX:4:1101 RGSM=GGACGG
java -Xmx128g -XX:ParallelGCThreads=32 -jar $PICPATH AddOrReplaceReadGroups I=HC2HMDSXX.4.GTAGGC.unmapped.1.fastq.gz.Cathmin.aln.sin.sam.add.bam O=sample.GTAGGC.alg.Cathmin.code.bam RGID=@A00442:HC2HMDSXX181119 RGLB=lib20 RGPL=ILLUMINA RGPU=HC2HMDSXX:4:1101 RGSM=GTAGGC
java -Xmx128g -XX:ParallelGCThreads=32 -jar $PICPATH AddOrReplaceReadGroups I=HC2HMDSXX.4.TAATGT.unmapped.1.fastq.gz.Cathmin.aln.sin.sam.add.bam O=sample.TAATGT.alg.Cathmin.code.bam RGID=@A00442:HC2HMDSXX181119 RGLB=lib21 RGPL=ILLUMINA RGPU=HC2HMDSXX:4:1101 RGSM=TAATGT
java -Xmx128g -XX:ParallelGCThreads=32 -jar $PICPATH AddOrReplaceReadGroups I=HC2HMDSXX.4.TATAAT.unmapped.1.fastq.gz.Cathmin.aln.sin.sam.add.bam O=sample.TATAAT.alg.Cathmin.code.bam RGID=@A00442:HC2HMDSXX181119 RGLB=lib22 RGPL=ILLUMINA RGPU=HC2HMDSXX:4:1101 RGSM=TATAAT
java -Xmx128g -XX:ParallelGCThreads=32 -jar $PICPATH AddOrReplaceReadGroups I=HC2HMDSXX.4.TATCAG.unmapped.1.fastq.gz.Cathmin.aln.sin.sam.add.bam O=sample.TATCAG.alg.Cathmin.code.bam RGID=@A00442:HC2HMDSXX181119 RGLB=lib23 RGPL=ILLUMINA RGPU=HC2HMDSXX:4:1101 RGSM=TATCAG
java -Xmx128g -XX:ParallelGCThreads=32 -jar $PICPATH AddOrReplaceReadGroups I=HC2HMDSXX.4.TCATTC.unmapped.1.fastq.gz.Cathmin.aln.sin.sam.add.bam O=sample.TCATTC.alg.Cathmin.code.bam RGID=@A00442:HC2HMDSXX181119 RGLB=lib24 RGPL=ILLUMINA RGPU=HC2HMDSXX:4:1101 RGSM=TCATTC
java -Xmx128g -XX:ParallelGCThreads=32 -jar $PICPATH AddOrReplaceReadGroups I=HC2HMDSXX.4.TCCCGA.unmapped.1.fastq.gz.Cathmin.aln.sin.sam.add.bam O=sample.TCCCGA.alg.Cathmin.code.bam RGID=@A00442:HC2HMDSXX181119 RGLB=lib25 RGPL=ILLUMINA RGPU=HC2HMDSXX:4:1101 RGSM=TCCCGA
java -Xmx128g -XX:ParallelGCThreads=32 -jar $PICPATH AddOrReplaceReadGroups I=HC2HMDSXX.4.TCCTAG.unmapped.1.fastq.gz.Cathmin.aln.sin.sam.add.bam O=sample.TCCTAG.alg.Cathmin.code.bam RGID=@A00442:HC2HMDSXX181119 RGLB=lib26 RGPL=ILLUMINA RGPU=HC2HMDSXX:4:1101 RGSM=TCCTAG
java -Xmx128g -XX:ParallelGCThreads=32 -jar $PICPATH AddOrReplaceReadGroups I=HC2HMDSXX.4.TCGAAG.unmapped.1.fastq.gz.Cathmin.aln.sin.sam.add.bam O=sample.TCGAAG.alg.Cathmin.code.bam RGID=@A00442:HC2HMDSXX181119 RGLB=lib27 RGPL=ILLUMINA RGPU=HC2HMDSXX:4:1101 RGSM=TCGAAG
java -Xmx128g -XX:ParallelGCThreads=32 -jar $PICPATH AddOrReplaceReadGroups I=HC2HMDSXX.4.TGACAT.unmapped.1.fastq.gz.Cathmin.aln.sin.sam.add.bam O=sample.TGACAT.alg.Cathmin.code.bam RGID=@A00442:HC2HMDSXX181119 RGLB=lib28 RGPL=ILLUMINA RGPU=HC2HMDSXX:4:1101 RGSM=TGACAT
java -Xmx128g -XX:ParallelGCThreads=32 -jar $PICPATH AddOrReplaceReadGroups I=HC2HMDSXX.4.TGAGCC.unmapped.1.fastq.gz.Cathmin.aln.sin.sam.add.bam O=sample.TGAGCC.alg.Cathmin.code.bam RGID=@A00442:HC2HMDSXX181119 RGLB=lib29 RGPL=ILLUMINA RGPU=HC2HMDSXX:4:1101 RGSM=TGAGCC
java -Xmx128g -XX:ParallelGCThreads=32 -jar $PICPATH AddOrReplaceReadGroups I=HC2HMDSXX.4.TGTACG.unmapped.1.fastq.gz.Cathmin.aln.sin.sam.add.bam O=sample.TGTACG.alg.Cathmin.code.bam RGID=@A00442:HC2HMDSXX181119 RGLB=lib30 RGPL=ILLUMINA RGPU=HC2HMDSXX:4:1101 RGSM=TGTACG
java -Xmx128g -XX:ParallelGCThreads=32 -jar $PICPATH AddOrReplaceReadGroups I=HC2HMDSXX.4.TTCGAA.unmapped.1.fastq.gz.Cathmin.aln.sin.sam.add.bam O=sample.TTCGAA.alg.Cathmin.code.bam RGID=@A00442:HC2HMDSXX181119 RGLB=lib31 RGPL=ILLUMINA RGPU=HC2HMDSXX:4:1101 RGSM=TTCGAA
java -Xmx128g -XX:ParallelGCThreads=32 -jar $PICPATH AddOrReplaceReadGroups I=HC2HMDSXX.4.TTGACT.unmapped.1.fastq.gz.Cathmin.aln.sin.sam.add.bam O=sample.TTGACT.alg.Cathmin.code.bam RGID=@A00442:HC2HMDSXX181119 RGLB=lib32 RGPL=ILLUMINA RGPU=HC2HMDSXX:4:1101 RGSM=TTGACT
