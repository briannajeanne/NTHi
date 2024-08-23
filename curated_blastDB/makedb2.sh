#cat makedb.sh 
#makeblastdb -in all_583.ffn -dbtype nucl -parse_seqids -out pan583 -title "pan583"
#makeblastdb -in combined.fasta -dbtype nucl -parse_seqids -out curated -title "curated"
makeblastdb -in combined.fasta -dbtype prot -parse_seqids -out curated -title "curated"
