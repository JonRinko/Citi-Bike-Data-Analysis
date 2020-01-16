## Citi Bike Data Analysis 

![Citi-Bikes](Images/citipic1.jpg)

For this project, we will be using SQLAlchemy, Postgres, Tableau and Python to perform analysis and hopefully create some nice visuals in addition to illuminating some of the hidden secrets of the Citi Bike data. 
Found here: [Citi Bike Data](https://www.citibikenyc.com/system-data)

I decided to use 2018 and 2019 data for analysis, and since December 2019 is not available yet, I will be using 23 csv files in the Postgres database, but you can use any data you like if you want to follo along. 

This data has been pre-processed to remove trips that are taken by staff as they service and inspect the system, trips that are taken to/from any of our “test” stations and any trips that were below 60 seconds in length (potentially false starts or users trying to re-dock a bike to ensure it's secure).

### Requirements

To start off, you’ll need to have installed Jupyter and set up a Postgres database. If you don’t have Jupyter installed on your local machine, you can get it up and running with pip. If you’ve previously installed Anaconda, you already have Jupyter installed.

You will also need to install two python packages to connect to your database through your notebook:

SQLAlchemy - generates SQL statements from python
Psycopg2 - communicates your SQL statements to your Postgres database

Both of these packages can be installed from the command line with pip or conda:

pip install sqlalchemy psycopg2
conda install -y sqlalchemy psycopg2

After that, you’re all set to analyze and visualize your data from your Postgres db in Jupyter with your visualization library of choice (e.g., matplotlib or seaborn).

### Check out the jupyter notebook
    
        
 
 

