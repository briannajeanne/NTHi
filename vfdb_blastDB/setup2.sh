#download
wget https://phidias.us/victors/downloads/gen_downloads.php
wget http://www.mgc.ac.cn/VFs/Down/VFDB_setB_nt.fas.gz

#unzip
gunzip VFDB_setB_nt.fas.gz


#reformating VFDB entries
cat VFDB_setB_nt.fas | sed 's/>/>VFDB_ /;' | awk '/^>/ {print $1"id-"NR} !/^>/ {print}' > all_reformat_short.fa 
cat VFDB_setB_nt.fas | sed 's/>/>VFDB_ /;' | awk '/^>/ {print $1"id-"NR"\t"$0}' | sed 's/ /_/g' | sed 's/VFDB__//g' > key.tab

#reformating VIC database entries
cat gen_downloads_reformat.fa | sed 's/>/>VIC_ /' | awk '/^>/ {print $1"id-"NR} !/^>/ {print}' >> all_reformat_short.fa 
cat gen_downloads_reformat.fa | sed 's/>/>VIC_ /' | awk '/^>/ {print $1"id-"NR"\t"$0}' | grep ">" | sed 's/>VIC_ />/g' >> key.tab 

#making blast db
makeblastdb -in all_reformat_short.fa -dbtype nucl -parse_seqids -out blast_VIC-VFDB -title "blast_VIC-VFDB"
