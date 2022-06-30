create database project1db;
use project1db;
select * from sales_data_sample;


select TERRITORY, DEALSIZE, SALES from sales_data_sample order by DEALSIZE;
select DEALSIZE, round(sum(SALES), 2) as sales from sales_data_sample where DEALSIZE = 'Large';
select DEALSIZE, round(sum(SALES), 2) as sales from sales_data_sample where DEALSIZE = 'Medium';
select DEALSIZE, round(sum(SALES), 2) as sales from sales_data_sample where DEALSIZE = 'Small';




select COUNTRY, SALES, PRICEEACH, QUANTITYORDERED from sales_data_sample;
select COUNTRY, round(sum(SALES), 2) as sales from sales_data_sample group by COUNTRY;




select ORDERDATE, round(sum(SALES), 2) as sales from sales_data_sample group by ORDERDATE;
select YEAR_ID, round(sum(SALES), 2) as sales from sales_data_sample where YEAR_ID = 2003;
select YEAR_ID, round(sum(SALES), 2) as sales from sales_data_sample where YEAR_ID = 2004;
select YEAR_ID, round(sum(SALES), 2) as sales from sales_data_sample where YEAR_ID = 2005;





select CUSTOMERNAME, SALES  from sales_data_sample order by SALES desc limit 10;
select CUSTOMERNAME, SALES  from sales_data_sample order by SALES asc limit 10;
select CUSTOMERNAME, SALES  from sales_data_sample where SALES <= 10000;
select CUSTOMERNAME, SALES  from sales_data_sample where SALES between 10000 and 14000;
select CUSTOMERNAME, SALES  from sales_data_sample where SALES > 14000;





select CUSTOMERNAME, ORDERNUMBER, SALES, PRICEEACH, QUANTITYORDERED, STATUS from sales_data_sample where STATUS = 'Shipped' ;
select CUSTOMERNAME, ORDERNUMBER, SALES, PRICEEACH, QUANTITYORDERED, STATUS from sales_data_sample where STATUS = 'In Process';
select CUSTOMERNAME, ORDERNUMBER, SALES, PRICEEACH, QUANTITYORDERED, STATUS from sales_data_sample where STATUS = 'Cancelled';
select CUSTOMERNAME, ORDERNUMBER, SALES, PRICEEACH, QUANTITYORDERED, STATUS from sales_data_sample where STATUS = 'Disputed';
select CUSTOMERNAME, ORDERNUMBER, SALES, PRICEEACH, QUANTITYORDERED, STATUS from sales_data_sample where STATUS = 'On Hold';





select CUSTOMERNAME, ORDERNUMBER, QUANTITYORDERED, max(SALES) as sales from sales_data_sample ;
select CUSTOMERNAME, ORDERNUMBER, QUANTITYORDERED, min(SALES) as sales from sales_data_sample ;
select  round(avg(SALES), 2) as sales from sales_data_sample