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
	productsize DOUBLE,
	productmeasure STRING,
	purchasequantity INT
)
STORED AS TEXTFILE
LOCATION '/user/cloudera/rec_data/transformed_trans';

INSERT OVERWRITE TABLE transformed_trans select id, chain, dept, category, company, brand, productsize, productmeasure, sum(purchasequantity) totalquantity from transactions group by id, chain, dept, category, company, brand, productsize, productmeasure having totalquantity > 0;