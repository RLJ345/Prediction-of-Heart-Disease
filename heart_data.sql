use project;
select * from dbo.heart;
----------------------------------------------------------------------------------------------------------------------------
select ((age - 29)/48) as Age_std,
sex,
((chest - 1)/3) as chest_std,
((resting_blood_pressure - 94)/106) as resting_blood_pressure_std,
((serum_cholestoral - 126)/438) as serum_cholestoral,
fasting_blood_sugar,
((imum_heart_rate_achieved - 71)/438) as imum_heart_rate_achieved,
exercise_induced_angina,
((oldpeak - 0)/6.2) as oldpeak,
case when resting_electrocardiographic_results = 0 then 1 else 0 end as resting_electrocardiographic_results_0,
case when resting_electrocardiographic_results = 1 then 1 else 0 end as resting_electrocardiographic_results_1,
case when resting_electrocardiographic_results = 2 then 1 else 0 end as resting_electrocardiographic_results_2,
case when slope = 1 then 1 else 0 end as slope_1,
case when slope = 2 then 1 else 0 end as slope_2,
case when slope = 3 then 1 else 0 end as slope_3,
case when number_of_major_vessels = 0 then 1 else 0 end as number_of_major_vessels_0,
case when number_of_major_vessels = 1 then 1 else 0 end as number_of_major_vessels_1,
case when number_of_major_vessels = 2 then 1 else 0 end as number_of_major_vessels_2,
case when number_of_major_vessels = 3 then 1 else 0 end as number_of_major_vessels_3,
case when thal = 3 then 1 else 0 end as thal_3,
case when thal = 6 then 1 else 0 end as thal_6,
case when thal = 7 then 1 else 0 end as thal_7,
case when class = 'present' then 1 else 0 end as class_binary
into heart_binary
from dbo.heart;

-------------------------------------------------------------------------------------------------------------------
select MIN(oldpeak),(oldpeak),((oldpeak)- min(oldpeak)) from dbo.heart;

select MIN(age),(age),((age)- min(age)) from dbo.heart;

select MIN(chest),(chest),((chest)- min(chest)) from dbo.heart;

select MIN(resting_blood_pressure),(resting_blood_pressure),((resting_blood_pressure)- min(resting_blood_pressure)) from dbo.heart;

select MIN(serum_cholestoral),(serum_cholestoral),((serum_cholestoral)- min(serum_cholestoral)) from dbo.heart;

select MIN(imum_heart_rate_achieved),(imum_heart_rate_achieved),((imum_heart_rate_achieved)- min(imum_heart_rate_achieved)) from dbo.heart;
