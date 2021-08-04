for folder in T3_L*/
do
# echo -l  $folder*R1*
cat $folder*R2* >> T3_R2.fastq.gz
done
