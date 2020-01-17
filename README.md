## Citi Bike Data Analysis 
<p align="center">
  <img width="460" height="300" src="Images/citipic1.jpg">
</p>

For this project, we will be using SQLAlchemy, Postgres, Tableau and Python to perform analysis and hopefully create some nice visuals in addition to illuminating some of the hidden secrets of the Citi Bike data. 
The data and information about the data can be found here: [Citi Bike Data](https://www.citibikenyc.com/system-data)

I downloaded the 2018 and 2019 data for analysis, and since December 2019 is not available yet, I will be using 23 csv files initially. 

Luckily, this data has been pre-processed to remove trips that are taken by staff as they service and inspect the system, trips that are taken to/from any “test” stations and any trips that were below 60 seconds in length (potentially false starts or users trying to re-dock a bike to ensure it's secure).

### Requirements

To start off, you’ll need to have installed Jupyter and set up a Postgres database. If you don’t have Jupyter installed on your local machine, you can get it up and running with pip. If you’ve previously installed Anaconda, you already have Jupyter installed.

This project will also be using two python packages to connect the database to the notebook:

SQLAlchemy - generates SQL statements from python
Psycopg2 - communicates your SQL statements to your Postgres database

Both of these packages can be installed from the command line with pip or conda:

pip install sqlalchemy psycopg2
conda install -y sqlalchemy psycopg2

I am assuming you can create tables in postgres and import the data as shown: 

![Data]('Images/ImportCSV.png')

This has been done for all 23 csv's. 

Ok, we're all set. Let's take this data for a ride! 
    
        
 
 

