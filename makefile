git:
	cd ../covid_pt;git reset --hard; git pull
	#cd ../covid-19;git reset --hard; git pull;
	#rm ../covid-19/csse_covid_19_data/csse_covid_19_daily_reports/bigfile.csv
	#cd ../covid-19/csse_covid_19_data/csse_covid_19_daily_reports; awk '(NR == 1) || (FNR > 1)' *.csv > bigfile.csv
	cp -p "`ls -dtr ../covid_pt/datasets/*covid_prt.csv | tail -1`" dados/covid_pt.csv
	#cp -p "`ls -dtr ../covid-19/csse_covid_19_data/csse_covid_19_daily_reports/*.csv | tail -1`" dados/covid.csv
	#apaga primeira linha
	#sed -i '1d' dados/covid.csv
	#insere cabs
	#sed -i '1iProvince/State,Country/Region,Last Update,Confirmed,Deaths,Recovered,Latitude,Longitude' dados/covid.csv
	#Adicionar git
	git add .
	#git commit -m "$m"
	git commit -m "update"
	git push -u origin master
