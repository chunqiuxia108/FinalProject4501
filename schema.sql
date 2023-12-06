
CREATE TABLE three_11s (
	complaint_id INTEGER NOT NULL, 
	zipcode INTEGER, 
	latitude FLOAT, 
	longitude FLOAT, 
	created_date DATETIME, 
	geometry geometry(POINT,-1), 
	complaint_type VARCHAR, 
	PRIMARY KEY (complaint_id)
)




CREATE TABLE trees (
	treedata_id INTEGER NOT NULL, 
	tree_id VARCHAR, 
	zipcode INTEGER, 
	latitude FLOAT, 
	longitude FLOAT, 
	status VARCHAR, 
	health VARCHAR, 
	spc_common VARCHAR, 
	geometry geometry(POINT,-1), 
	PRIMARY KEY (treedata_id)
)




CREATE TABLE zipcodes (
	zipcode INTEGER NOT NULL, 
	area VARCHAR, 
	state VARCHAR, 
	county VARCHAR, 
	geometry geometry(POLYGON,-1), 
	PRIMARY KEY (zipcode)
)




CREATE TABLE zillows (
	rent_id INTEGER NOT NULL, 
	zipcode INTEGER, 
	city VARCHAR, 
	county VARCHAR, 
	date DATE, 
	rent FLOAT, 
	PRIMARY KEY (rent_id)
)



