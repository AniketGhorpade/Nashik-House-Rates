use nashik_apt_rate;

select * from nashik_aprtment_rate_2
order by cordinates;

select housetype,house_condition,BHK,max(price),per_month_emi,total_sqft,cordinates
from nashik_aprtment_rate_2
where BHK > 0 and price > 0 and per_month_emi > 0 and  total_sqft > 0
group by housetype,house_condition,cordinates,BHK
order by cordinates;

select housetype,house_condition,BHK,max(price) as max_price,
per_month_emi,total_sqft,cordinates, max(price)*100000 / total_sqft as PricePerSqFt
from nashik_aprtment_rate_2
where BHK > 0 and price > 0 and per_month_emi > 0 and  total_sqft > 0
group by housetype,house_condition,cordinates,BHK
order by PricePerSqFt desc 
limit 1;

select housetype,house_condition,BHK,max(price) as max_price,
per_month_emi,total_sqft,cordinates, max(price)*100000 / total_sqft as PricePerSqFt
from nashik_aprtment_rate_2
where BHK > 0 and price > 0 and per_month_emi > 0 and  total_sqft > 0
group by housetype,house_condition,cordinates,BHK
order by PricePerSqFt  
limit 1,1 ;

select housetype,house_condition,BHK,max(price) as max_price,
per_month_emi,total_sqft,cordinates, max(price)*100000 / total_sqft as PricePerSqFt
from nashik_aprtment_rate_2
where BHK > 0 and price > 0 and per_month_emi > 0 and  total_sqft > 0 
and housetype = "independent house" and house_condition = "new"
group by housetype,house_condition,cordinates,BHK
order by PricePerSqFt;






