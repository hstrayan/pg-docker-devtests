set session my.pgrs = '10';
set session my.emds = '10';
set session my.emddesc = '10';
set session my.documents = '10';

CREATE EXTENSION pgcrypto;

INSERT INTO ticket
select id, concat('Passenger ', id) 
FROM GENERATE_SERIES(1, current_setting('my.pgrs')::int) as id;

INSERT INTO emd
select id,  concat('EMD ', id) , floor(random() * (current_setting('my.emddesc')::int) + 1)::int
FROM GENERATE_SERIES(1, current_setting('my.emds')::int) as id;
    

INSERT INTO document
select id
	, concat('Document ', id), 'docdesc',
	 floor(random() * (current_setting('my.pgrs')::int) + 1)::int
FROM GENERATE_SERIES(1, current_setting('my.documents')::int) as id;
