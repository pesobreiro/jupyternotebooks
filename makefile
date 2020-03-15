git:
	cd ../covid_pt;git reset --hard; git pull
	cd ../covid-19;git reset --hard; git pull
	cp -p "`ls -dtr ../covid_pt/datasets/*.csv | tail -1`" dados/covid_pt.csv
	cp -p "`ls -dtr ../covid-19/csse_covid_19_data/csse_covid_19_daily_reports/*.csv | tail -1`" dados/covid.csv
	#Adicionar git
	git add .
	#git commit -m "$m"
	git commit -m "update"
	git push -u origin master
