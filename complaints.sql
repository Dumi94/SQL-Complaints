--Dataset of Consumer Complaints
Select *
From ConsumerComplaints;
--Dataset was extracted from Excel file in CSV format

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

-- 1. Find out how many complaints were received and sent on the same day

Select COUNT(*) as "Complaints dealt on the same day"
From ConsumerComplaints
Where DATEDIFF(day,Date_Received, Date_Sent_To_Company) =0;

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
--2. Extract the complaints received in the states of New York

Select COUNT(*) As "Complaints from New York"
From ConsumerComplaints
Where State_Name = 'NY';

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
--3. Extract the complaints received in the states of New York and Carlifornia

Select COUNT(*) As "Complaints from New York and Carlifonia"
From ConsumerComplaints
Where State_Name = 'CA'or State_Name = 'NY';

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

--4. Extract all rows with the word 'Credit' in the Product field

Select Date_Received,Product_Name
From ConsumerComplaints
Where Product_Name LIKE '%Credit%';

Select COUNT(*) AS "Rows with the word credit"
From ConsumerComplaints
Where Product_Name LIKE '%Credit%';

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
--5. Extract all rows with the word "Late" in the issue field

Select Date_Received, Product_Name, Issue, Company,State_Name
From ConsumerComplaints
Where Issue LIKE '%Late%';

Select COUNT(*) AS "Consumers complaining about late fee "
From ConsumerComplaints
Where Issue LIKE '%Late%';


