Use EPKO_DATABASE;

Select*from [HealthcareData];

--Cleaning the data

EXEC sp_rename 'HealthcareData.Name', 'FullName', 'COLUMN';--Renaming Name Column


Select FullName,UPPER(FullName) AS Full_Name from HealthCareData;

Update HealthCareData
set FullName=upper(FullName);--Cleaning Name column Data

Update HealthcareData
set [Billing Amount]=ROUND( [Billing Amount],0);--Removing Decimals

--Creating a view to load into PowerBI
Create view
ViewHealthCareData
as 
select*from HealthcareData;

Select*from ViewHealthCareData;

