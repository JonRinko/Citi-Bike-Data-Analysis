SELECT COUNT(DISTINCT start_station_name) 
	FROM cumulative;

CREATE TABLE test (
	id SERIAL Primary key);
	
drop table test;



CREATE TABLE cumulative (
	id serial primary key,
	tripduration integer NOT NULL, 
	starttime date, stoptime date, 
	start_station_id varchar(20), 
	start_station_name varchar, 
	start_station_latitude float, start_station_longitude float,
	end_station_id varchar(20), end_station_name varchar, 
	end_station_latitude float, end_station_longitude float, 
	bikeid varchar(20),
	usertype varchar(20), birth_year varchar(4), gender integer
);

select * from test;

SELECT * FROM cumulative;

ALTER TABLE cumulative 
RENAME COLUMN end_station_longitudem TO end_station_longitude;

INSERT INTO public.test( tripduration, starttime, stoptime, start_station_id, start_station_name, 
							  	start_station_latitude, start_station_longitude, end_station_id, end_station_name, 
							  		end_station_latitude, end_station_longitude, bikeid, usertype, birth_year, gender) 
										(SELECT * FROM september_2018);
										
INSERT INTO public.cumulative( tripduration, starttime, stoptime, start_station_id, start_station_name, 
							  	start_station_latitude, start_station_longitude, end_station_id, end_station_name, 
							  		end_station_latitude, end_station_longitude, bikeid, usertype, birth_year, gender) 
										(SELECT * FROM september_2019);

SELECT * 
INTO newbikes
FROM cumulative 
WHERE tripduration BETWEEN 90 AND 86400;

DROP TABLE newbikes;	

SELECT * FROM newbikes
LIMIT 10;

SELECT reltuples AS approximate_row_count FROM pg_class WHERE relname = 'newbikes';

SELECT 
							

		
SELECT ss.count,
	ss.start_station_id,
	ss.start_station_name,
	nb.start_station_longitude,
	nb.start_station_latitude
INTO start_stations_with_cords
FROM start_Stations as ss
INNER JOIN newbikes as nb
ON ss.start_station_id = nb.start_station_id
GROUP BY ss.count,
	ss.start_station_id,
	ss.start_station_name,
	nb.start_station_longitude,
	nb.start_station_latitude;

SELECT * FROM start_stations_with_cords
ORDER BY count desc
LIMIT 10;

DROP TABLE start_stations_with_cords;
							
							
							
							
							
							
							
							