-- primary key id check (we need it here)
-- csv file name check (we don't need it)
SELECT * FROM september_2019;
-- copied the table
CREATE TABLE cumulative AS TABLE september_2019 WITH NO DATA;
SELECT * FROM cumulative;

-- primary key id add
ALTER TABLE cumulative
ADD COLUMN id SERIAL NOT NULL;


ALTER TABLE cumulative ADD PRIMARY KEY (id);

-- modify order of table by re-creating it

SELECT * FROM cumulative;
-- insert data from direct import
INSERT INTO public.cumulative(
	tripduration, starttime, stoptime, start_station_id, start_station_name, start_station_latitude, start_station_longitude, end_station_id, end_station_name, end_station_latitude, end_station_longitudem, bikeid, usertype, birth_year, gender)
	 (SELECT * FROM april_2018);

INSERT INTO public.cumulative(
	tripduration, starttime, stoptime, start_station_id, start_station_name, start_station_latitude, start_station_longitude, end_station_id, end_station_name, end_station_latitude, end_station_longitudem, bikeid, usertype, birth_year, gender)
	 (SELECT * FROM april_2018);