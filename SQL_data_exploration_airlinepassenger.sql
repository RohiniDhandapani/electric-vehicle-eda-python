SELECT * From airline_passenger_satisfaction;

--count of Passengers by Satisfaction
SELECT Satisfaction,COUNT(*) AS Passengers_Count
         FROM airline_passenger_satisfaction 
                  GROUP BY Satisfaction;

--Finding Passengers with Departure Delay Greater than 30 Minutes
SELECT "Departure Delay" ,"Arrival Delay" 
           from airline_passenger_satisfaction 
		         WHERE "Departure Delay" >30;

--Using CASE Statement to Classify Passengers Based on Flight Distance
SELECT ID,"Flight Distance" ,
           CASE 
		           WHEN "Flight Distance" < 500 THEN "Short Haul"
		           WHEN "Flight Distance"  BETWEEN 500 AND 1500  THEN "Medium Haul"
				   ELSE "Long Haul"
		 END AS Flight_Category
FROM airline_passenger_satisfaction;
		               
           
--Subquery to Find Passengers with Above-Average Flight Distance
SELECT  ID,"Flight Distance" FROM airline_passenger_satisfaction 
      where "Flight Distance"> (select avg("Flight Distance")
	       from airline_passenger_satisfaction);

--GROUP BY with HAVING Clause: Finding Classes with More Than 100 Passengers
SELECT Class,count(*) as  Total_Passengers 
       from airline_passenger_satisfaction 
	          GROUP BY "Class" HAVING count(*) >100;

--Window Function: Calculating the Running Total of Flight Distance by Class
SELECT Class,"Flight Distance" ,
                 sum("Flight Distance") OVER(PARTITION BY Class ORDER BY ID ) 
				            as Runnig_Total 
							 from airline_passenger_satisfaction;

--Window Function: Ranking Passengers by Departure Delay
SELECT Class,"Departure Delay",
           rank() over(PARTITION BY Class ORDER BY "Departure Delay"  DESC) as "Delay_rank " 
		   from airline_passenger_satisfaction;
   
--Creating a View: Flight Delays and Satisfaction
CREATE VIEW Flight_Delay_Satisfactions_2 as
      SELECT ID,"Departure Delay","Arrival Delay",Satisfaction 
	  from airline_passenger_satisfaction 
	    WHERE "Departure Delay">0 or "Arrival Delay">0;
	  
--Querying the View: Analyzing Delays and Satisfaction
SELECT Satisfaction,count(*) as Total_Passengers,
       avg("Departure Delay") as Avg_Departure_Delay,
	   avg("Arrival Delay") as Avg_Arrival_Delay 
	   from Flight_Delay_Satisfactions_2 
	   GROUP BY Satisfaction;
	   
--Window Function: Calculating Percentile Rank Based on In-flight Entertainment Rating
SELECT ID,"In-flight Entertainment" ,
          PERCENT_RANK() OVER(ORDER BY "In-flight Entertainment") AS Entertainment_Rating
          from  airline_passenger_satisfaction;
		  
--ROW_NUMBER() to Identify First-Time Customers with the Longest Flight
SELECT "Customer Type","Flight Distance",
     ROW_NUMBER() over (PARTITION BY "Customer Type" ORDER BY "Flight Distance" DESC) AS Row_Num
	 FROM airline_passenger_satisfaction 
	 WHERE "Customer Type"="First-time"



