
CREATE TABLE three_11s (
	id INTEGER NOT NULL, 
	zipcode INTEGER, 
	latitude FLOAT, 
	longitude FLOAT, 
	created_date DATETIME, 
	geometry geometry(POINT,-1), 
	complaint_type VARCHAR, 
	PRIMARY KEY (id)
)




CREATE TABLE trees (
	id INTEGER NOT NULL, 
	tree_id VARCHAR, 
	zipcode INTEGER, 
	latitude FLOAT, 
	longitude FLOAT, 
	status VARCHAR, 
	health VARCHAR, 
	spc_common VARCHAR, 
	geometry geometry(POINT,-1), 
	PRIMARY KEY (id)
)




CREATE TABLE zipcodes (
	id INTEGER NOT NULL, 
	zipcode INTEGER, 
	area VARCHAR, 
	state VARCHAR, 
	county VARCHAR, 
	geometry geometry(POLYGON,-1), 
	PRIMARY KEY (id)
)




CREATE TABLE zillows (
	id INTEGER NOT NULL, 
	zipcode INTEGER, 
	city VARCHAR, 
	county VARCHAR, 
	date DATE, 
	rent FLOAT, 
	PRIMARY KEY (id)
)



