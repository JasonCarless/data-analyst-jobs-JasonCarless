/* multiline comment
Uses these 
Symbols */
-- single line comments like this

--#1 
select count(*) from data_analyst_jobs; 
--1793 rows

--#2 
select * from data_analyst_jobs
LIMIT 10; 
--ExxonMobile 

--#3 
select * from data_analyst_jobs
where location = 'TN'; 
--21 postings

--#3 
select * from data_analyst_jobs
where location = 'TN' or location = 'KY'; 
--27 postings

--#4
select * from data_analyst_jobs
where location = 'TN' and star_rating >4; 
--3 postings

--#5 
select * from data_analyst_jobs
Where review_count between 500 and 1000; 
--151 postings 

--#6 
select avg(star_rating) as avg_rating, location
from data_analyst_jobs
where star_rating is not null
group by location
order by avg_rating desc; 
--nebraska has highest average rating

--#7 
select distinct  title from data_analyst_jobs; 
--881 distinct titles

--#8 
select distinct title, location
from data_analyst_jobs
where location ='CA'; 
--230 unique titles

--#9 
select company, avg(star_rating) as avg_rating
from data_analyst_jobs
where review_count > 5000 and company is not null
group by company; 
--40 companies with more than 5000 reviews

--#10 
select company, avg(star_rating) as avg_rating
from data_analyst_jobs
where review_count > 5000 and company is not null
group by company
order by avg_rating desc; 
--6 companies share an average of 4.199999809 */

--#11 
select distinct title 
from data_analyst_jobs
where upper(title) like upper('%Analyst%'); 
--774 different job titles 

--#12 
select distinct title 
from data_analyst_jobs
where UPPER(title) not like '%ANALYST%'and upper(title) not like '%ANALYTICS%';
--4 postings, they are about tableau

--BONUS  
select domain, count(title) 
from data_analyst_jobs
where skill like '%SQL%' 
and domain is not null
and days_since_posting >21
group by domain
order by count(title) desc; 

/*"Internet and Software"	62
"Banks and Financial Services"	61
"Consulting and Business Services"	57
"Health Care"	52*/