for folder in *L00*
do
pathR1="$folder"/*R1*
pathR2="$folder"/*R2*

fastqc -o fastqc $pathR1
fastqc -o fastqc $pathR2
done
