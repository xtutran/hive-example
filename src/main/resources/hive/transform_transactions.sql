USE cloudera;

DROP TABLE IF EXISTS transformed_trans;
CREATE EXTERNAL TABLE transformed_trans (
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
STORED AS TEXTFILE
LOCATION '/user/cloudera/rec_data/transformed_trans';

FROM transactions trans INSERT OVERWRITE TABLE transformed_trans SELECT trans.*;