select *
from crime_scene_report
where date = '20180115' and city = 'SQL City' and type = 'murder'


select *
from person
where address_street_name = 'Northwestern Dr' and address_number = (select max(address_number)
from person)

select *
from person
where name like '%Annabel%' and address_street_name = 'Franklin Ave'


select name, address_number, address_street_name, transcript, person_id, license_id
from person p
join interview i
on p.id = i.person_id
where name in ('Annabel Miller' , 'Morty Schapiro')

select * 
from get_fit_now_check_in
where check_in_date = 20180109

SELECT *
from get_fit_now_member gfm
join get_fit_now_check_in gfi
on gfm.id = gfi.membership_id
where membership_status = 'gold' and membership_id like '%48Z%'


SELECT *
from drivers_license
where plate_number like '%H42W%' and gender = 'male'

select *
from person p
join drivers_license d
on d.id=p.license_id
where p.license_id IN (423327,664760)

select *
from get_fit_now_member
where membership_status = 'gold' and name like 'Jeremy%'

select *
from get_fit_now_member
where membership_status = 'gold' and name like 'Tushar%'

select id, person_id, name 
from get_fit_now_member
where person_id IN (select p.id
                    from person p
                    join drivers_license d
                    on d.id=p.license_id
                    where p.license_id IN (423327,664760))
                    and membership_status = 'gold'
                    
SELECT *
from get_fit_now_member gfm
join get_fit_now_check_in gfi
on gfm.id = gfi.membership_id
where membership_status = 'gold' and name like 'Jeremy%' and check_in_date = 20180109 

--from the series of codes, it was discovered that Jeremy Bowers was responsible for the assisination. 

--After finding the assasin, we needed to find the person who paid Jeremy Bowers to carry out the murder 


select name, id, transcript testimony 
from person p
join interview i
on p.id = i.person_id
where name ='Jeremy Bowers'


select id, height, hair_color, gender, car_make, car_model
from drivers_license
where hair_color = 'red' and car_model = 'Model S' and gender = 'female'


select name
from person p
join drivers_license d
on p.license_id = d.id
where  hair_color = 'red' and car_model = 'Model S' and gender = 'female'

select *
FROm facebook_event_checkin
where event_name = 'SQL Symphony Concert' and date like '201712%'

select name, event_name
from person p
join facebook_event_checkin f
on p.id = f.person_id
where  event_name = 'SQL Symphony Concert' and date like '201712%' and name in ('Red Korb', 'Regina George', 'Miranda Priestly')




