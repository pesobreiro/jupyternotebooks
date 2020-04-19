git:
	#cd ../covid_pt;git reset --hard; git pull
	#cd ../covid-19;git reset --hard; git pull;
	# Não preciso de apagar vou adicionar o ultimo ao bigfile
	#rm ../covid-19/csse_covid_19_data/csse_covid_19_daily_reports/bigfile.csv
	#cd ../covid-19/csse_covid_19_data/csse_covid_19_daily_reports; awk '(NR == 1) || (FNR > 1)' *.csv > bigfile.csv
	#cp -p "`ls -dtr ../covid_pt/datasets/*covid_prt.csv | head -1`" dados/covid_pt.csv
	#vai buscar o ultimo ficheiro
	#cp -p "`ls -dtr ../covid-19/csse_covid_19_data/csse_covid_19_daily_reports/*.csv | tail -1`" dados/ultimoCovid.csv
	#paste dados/ultimoCovid.csv dados/bigfile.csv > dados/bigfileNovo.csv
	#cp bigfileNovo.csv bigfile.csv
	# Remove duplicates lines
	#sort bigfile.csv | uniq -u 
	#apaga primeira linha
	#sed -i '1d' dados/covid.csv
	#insere cabs
	#sed -i '1iProvince/State,Country/Region,Last Update,Confirmed,Deaths,Recovered,Latitude,Longitude,active' dados/covid.csv
	#Adicionar git
	git add .
	git commit -m "update"
	git push -u origin master