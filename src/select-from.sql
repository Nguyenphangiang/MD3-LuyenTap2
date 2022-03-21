select cityName,count(td.id) as tour_number from city
    join tourist_destinations td on city.id = td.city_id group by cityName;
select * from tour where month(startDate)=3;
select count(tourID)as number_tour_s_in_month3 from tour where month(startDate)=3;
select count(tourID)as number_tour_e_in_month4 from tour where month(endDate)=4;


