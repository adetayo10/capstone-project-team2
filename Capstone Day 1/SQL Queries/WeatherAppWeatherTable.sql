CREATE TABLE "Weather"(
"weatherId" integer not null GENERATED ALWAYS AS IDENTITY,
"cityId" integer not null,
"userId" integer not null,
"weatherStatusId" integer not null,
"description" varchar not null,
"icon" varchar not null,
"sunrise" timestamp without time zone not null,
"sunset" timestamp without time zone not null,
"temp" numeric not null,
"feelsLike" numeric not null,
"tempMin" numeric not null,
"tempMax" numeric not null,
"pressure" numeric not null,
"humidity" numeric not null,
"visibility" numeric not null,
"windSpeed" numeric not null,
"windDirection" numeric not null,
"cloudsAll" numeric not null,
"updatedOn" timestamp without time zone not null,
constraint "Weather_pkey" primary key ("weatherId"),
constraint "Weather_cityId_fkey" foreign key ("cityId")
references "City"("cityId"),
constraint "Weather_userId_fkey" foreign key ("userId")
references "User"("userId")
);



--insert a new weather record
insert into "Weather"  ("cityId", "userId", "weatherStatusId", "description", "icon", "sunrise", "sunset", "temp", "feelsLike", "tempMin", 
						"tempMax", "pressure", "humidity", "visibility", "windSpeed", "windDirection", "cloudsAll", "updatedOn")
values (1, 2, 3, 'Cloudy with a chance of rain', '01n', '2023-02-22 06:30:00', '2023-02-22 18:30:00', 12.5, 10.5, 9.5,
        15.5, 1015, 75, 8000, 5.5, 180, 80, '2023-02-22 12:30:00');

--select weather based on cityId
select * from "Weather" where "cityId" = 1; 

--Update the weather record with "weatherId" = 1 and set the "temp" value to 15.0
update "Weather" set "temp" = 15.0 where "weatherId" = 1; 

--insert another weather record
insert into "Weather"  ("cityId", "userId", "weatherStatusId", "description", "icon", "sunrise", "sunset", "temp", "feelsLike", "tempMin", 
						"tempMax", "pressure", "humidity", "visibility", "windSpeed", "windDirection", "cloudsAll", "updatedOn")
values(2, 2, 200, 'scattered clouds', '03d', '2023-02-23 06:39:53', '2023-02-23 17:50:39', 19.2, 18.3, 18.5, 20.8, 1010.0, 74.0, 
        10000, 3.0, 170.0, 40.0, '2023-02-23 13:45:00');

--select all weather records
select * from "Weather"; 


