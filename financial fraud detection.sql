SELECT * FROM finance.cc_data;
use finance;
/*To Calculate the total number of transactions in the cc_data table */
select count(trans_num)
from cc_data;

/*ToIdentify the top 10 most frequent merchants in the cc_data table */
select merchant, count(trans_num)
from cc_data
group by 1
order by 2 DESC
LIMIT 10;

/*To Find the average transaction amount for each category of transactions
 in the cc_data table */
 select category, round(avg(amt),2) as avg_transaction_amt
 from cc_data
 group by 1
 order by 2 DESC;
 
 /*To Determine the number of fraudulent transactions and the percentage of total 
transactions that they represent */

select 
     count(*) as total_transaction,
     sum(case when is_fraud = 1 then 1 else 0 end) as fraud_transaction,
     (sum(case when is_fraud = 1 then 1 else 0 end)/count(*)*100) as percentage_fraud_transaction
from cc_data;

/* To Join the cc_data and location_data tables to identify the latitude and longitude of 
each transaction*/
select c.cc_num, c.trans_num, c.state, c.city, c.street, l.lat, l.long, c.amt
from cc_data as c join location_data as l on c.cc_num = l.cc_num;

/*to Identify the city with the highest population in the location_data table*/

SELECT city, MAX(city_pop) AS population
FROM cc_data
GROUP BY city
ORDER BY population DESC
LIMIT 10;



/*to Find the earliest and latest transaction dates in the cc_data table */
select min(trans_date_trans_time) as earliest_trans, max(trans_date_trans_time) as latest_trans
from cc_data;


SELECT
    MIN(str_to_date(trans_date_trans_time, '%d%mm%YYYY %H:%i')) AS earliest_transaction_date,
    MAX(str_to_date(trans_date_trans_time, '%d%mm%YYYY %H:%i')) AS latest_transaction_date
FROM cc_data;

/*Using Data Aggregation with SQL: */

/*What is the total amount spent across all transactions in the cc_data table? */
select sum(amt) as total_amount_spent
from cc_data;

/*How many transactions occurred in each category in the cc_data table? */
select category, count(trans_num) as transaction_count
from cc_data
group by category
order by transaction_count DESC;

/*What is the average transaction amount for each gender in the cc_data table?*/
select gender, round(avg(amt),2) as average_transaction_amount 
from cc_data
group by gender;

/*Which day of the week has the highest average transaction amount in the cc_data 
table? */

SELECT
    CHAR(trans_date_trans_time, 'Day') AS day_of_week,
    ROUND(AVG(amt), 2) AS avg_amount
FROM cc_data
GROUP BY CHAR(trans_date_trans_time, 'Day')
ORDER BY avg_amount DESC; 










 




