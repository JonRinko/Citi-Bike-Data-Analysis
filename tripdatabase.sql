SELECT * FROM cumulative
Order by starttime desc
LIMIT 10;

SELECT * FROM feb_2019
LIMIT 10;

ALTER TABLE cumulative 
RENAME COLUMN end_station_longitudem TO end_station_longitude;

INSERT INTO public.cumulative( tripduration, starttime, stoptime, start_station_id, start_station_name, 
							  	start_station_latitude, start_station_longitude, end_station_id, end_station_name, 
							  		end_station_latitude, end_station_longitude, bikeid, usertype, birth_year, gender) 
										(SELECT * FROM september_2018);
										
INSERT INTO public.cumulative( tripduration, starttime, stoptime, start_station_id, start_station_name, 
							  	start_station_latitude, start_station_longitude, end_station_id, end_station_name, 
							  		end_station_latitude, end_station_longitude, bikeid, usertype, birth_year, gender) 
										(SELECT * FROM september_2019);

							
							
							
							
							
							
							
							
							
							
							
							
							
							
							