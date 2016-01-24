USE cloudera;

DROP TABLE IF EXISTS transactions;
CREATE EXTERNAL TABLE transactions (
	--id,chain,dept,category,company,brand,date,productsize,productmeasure,purchasequantity,purchaseamount
	id BIGINT,
	chain INT,
	dept INT,
	category INT,
	company BIGINT,
	brand BIGINT,
	tdate STRING,
	productsize INT,
	productmeasure STRING,
	purchasequantity INT,
	purchaseamount DOUBLE
)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ','
STORED AS TEXTFILE
LOCATION '/user/cloudera/rec_data/transactions'
--LOCATION '/user/cloudera/rec_data/small_trans'
tblproperties("skip.header.line.count"="1"); 