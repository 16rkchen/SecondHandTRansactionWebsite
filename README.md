note  
需要一个picTemp的目录存放照片。  
数据库：mysql 8  
jdbc驱动：com.mysql.cj.jdbc.Driver
数据库表格:  
    items;  
	
	| Field      | Type             | Null | Key | Default | Extra          |
	+------------+------------------+------+-----+---------
	| item_id    | int(10) unsigned | NO   | PRI | NULL    | auto_increment |
	| item_name  | varchar(100)     | NO   |     | NULL    |                |
	| item_price | varchar(100)     | NO   |     | NULL    |                |
	| seller_id  | varchar(40)      | NO   |     | NULL    |                |
	| item_pic   | mediumblob       | NO   |     | NULL    |                |
	+------------+------------------+------+-----+---------