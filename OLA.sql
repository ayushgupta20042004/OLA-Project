Create database ola;
Use ola;
#1. Retrive all sucessfull Bookings:
Create View Sucessfull_Bookings As
SELECT*FROM Bookings
Where Booking_Status = 'Success';
#Q1. Retrive all sucessfull Bookings:
#Ans:
SElECT*FROM Sucessfull_Bookings;
#2. Find the average ride distance for each vehicle type:
Create view avg_ride_each_vehicle As
SELECT Vehicle_Type, AVG(Ride_Distance)
as avg_distance From Bookings
Group By Vehicle_Type;
#Q2. Find the average ride distance for each vehicle type:
#Ans:
SELECT *FROM avg_ride_each_vehicle;  
#3. List the top 5 customers who booked the highest number of rides:
Create view top_5customers As
Select Customer_ID, COUNT(Booking_ID) as Total_rides 
FROM Bookings 
group by Customer_ID
Order by Total_rides  DESC LIMIT 5;
#Q3. List the top 5 customers who booked the highest number of rides:
#ans:
Select*from top_5customers;
#4. Get the total number of cancelled rides by customers:
Create view  cancelled_rides_by_customers As
Select count(*) from Bookings
Where Booking_Status = 'Canceled by Customer';
#Q4. Get the total number of cancelled rides by customers:
#Ans:
Select*from cancelled_rides_by_customers;
#5. Get the number of rides cancelled by drivers due to personal and car-related issues:
Create view rides_cancelled_by_drivers As
Select count(*) from Bookings 
Where Canceled_Rides_by_Driver= 'Personal & Car related issue';
#Q5. Get the number of rides cancelled by drivers due to personal and car-related issues:
#Ans: 
Select*from rides_cancelled_by_drivers


















