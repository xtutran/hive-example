USE cloudera;

CREATE EXTERNAL TABLE IF NOT EXISTS history (
	--id,chain,offer,market,repeattrips,repeater,offerdate
	id BIGINT,
	chain INT,
	offerid BIGINT,
	market INT,
	repeattrips INT,
	repeater BOOLEAN,
	offerdate STRING
)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ','
STORED AS TEXTFILE
LOCATION '/user/cloudera/rec_data/history'
tblproperties("skip.header.line.count"="1");