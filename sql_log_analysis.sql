SELECT * FROM log_in_attempts WHERE event_id >= 100;								
SELECT * FROM log_in_attempts WHERE event_id BETWEEN 100 AND 150;

	--Google Cybersecurity Certificate: 	
Aply More Filters in SQL
--Step 1: Filter login attempts with an event ID greater than or equal to 100.
SELECT * FROM log_in_attempts WHERE event_id >= 100;

Step 2:  Filter login attempts with an event ID between 100 and 150.
SELECT * FROM log_in_attempts WHERE event_id BETWEEN 100 AND 150;
