# Oregon Open Data API

A containerized API microservice for datasets obtained from https://data.oregon.gov

## Technologies 
- C#, ASP.NET Core, Entity Framework
- Python
- T-SQL, SQL Server
- Docker, Docker-Compose

## Process 
1. Find and download a CSV dataset that is either interesting or has potential for interesting ways of querying / sorting the data. 
2. Clean the data up and make sure no columns are missing 
3. Write the initialization script for the database and tables needed for the dataset
4. Write a python script to scan the CSV file and generate a SQL file to insert the data into the database
5. Configure the connection between the .NET API and the Database 
6. Write Endpoints to expose the data for consumption  