use master

-- 1. Departments Table
CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY IDENTITY(1,1),
    DepartmentName NVARCHAR(100) NOT NULL,
    Location NVARCHAR(100)
);
INSERT INTO Departments (DepartmentName, Location) VALUES
('Cardiology', 'Block A'),
('Neurology', 'Block B'),
('Pediatrics', 'Block C'),
('Orthopedics', 'Block D'),
('Gynecology', 'Block E'),
('Dermatology', 'Block F'),
('Radiology', 'Block G'),
('Oncology', 'Block H'),
('Urology', 'Block I'),
('ENT', 'Block J');

-- 2. Doctors Table
CREATE TABLE Doctors (
    DoctorID INT PRIMARY KEY IDENTITY(1,1),
    Name NVARCHAR(100) NOT NULL,
    Specialty NVARCHAR(100),
    DepartmentID INT,
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);


INSERT INTO Doctors (Name, Specialty, DepartmentID) VALUES
('Allison Hill', 'Cardiologist', 1),
('Noah Rhodes', 'Neurologist', 2),
('Angie Henderson', 'Pediatrician', 3),
('Daniel Wagner', 'Orthopedic Surgeon', 4),
('Cristian Santos', 'Gynecologist', 5),
('Melissa Harris', 'Dermatologist', 6),
('Gary Nash', 'Radiologist', 7),
('Andrea Mccarthy', 'Oncologist', 8),
('Daniel Moore', 'Urologist', 9),
('Victoria Boyd', 'ENT Specialist', 10),
('Christopher May', 'Cardiologist', 1),
('Tracy Cruz', 'Neurologist', 2),
('Mark Sutton', 'Pediatrician', 3),
('Kimberly Schneider', 'Orthopedic Surgeon', 4),
('Samuel Bailey', 'Gynecologist', 5),
('Emily Morris', 'Dermatologist', 6),
('Jose White', 'Radiologist', 7),
('Tina Ramos', 'Oncologist', 8),
('Victor Burns', 'Urologist', 9),
('Nancy Fuller', 'ENT Specialist', 10),
('Todd Powell', 'Cardiologist', 1),
('Emma Jenkins', 'Neurologist', 2),
('Joshua Holland', 'Pediatrician', 3),
('Laura Wheeler', 'Orthopedic Surgeon', 4),
('Martin Gray', 'Gynecologist', 5),
('Julia Dean', 'Dermatologist', 6),
('Jason Bradley', 'Radiologist', 7),
('Anna Fox', 'Oncologist', 8),
('Anthony Carr', 'Urologist', 9),
('Sophia Stone', 'ENT Specialist', 10);

INSERT INTO Doctors (Name, Specialty, DepartmentID) VALUES
('George linden', 'ENT Specialist', 1);

-- 3. Patients Table
Drop table Patients

CREATE TABLE Patients (
    PatientID INT primary key,
    FullName NVARCHAR(100) NOT NULL,
    DateOfBirth DATE,
    Gender NVARCHAR(10),
    ContactNumber NVARCHAR(50)
);

INSERT INTO Patients (PatientID, FullName, DateOfBirth, Gender, ContactNumber) VALUES
(1, 'Rebecca Henderson', '1943-01-24', 'Other', '(697)848-0184x5146'),
(2, 'Aaron Bowen', '1970-04-08', 'Male', '281.489.3252x88095'),
(3, 'Brian Cox DVM', '1976-04-09', 'Male', '039.117.1822'),
(4, 'Theresa Martin', '2006-03-27', 'Other', '+1-638-346-5787x133'),
(5, 'Alex Spencer', '2014-07-04', 'Female', '010.310.5183'),
(6, 'David Cooper', '1980-01-02', 'Male', '230.451.6541'),
(7, 'Samantha Daniels', '1999-12-21', 'Female', '187-547-3290'),
(8, 'Edward Perry', '1968-09-30', 'Male', '783-120-9992'),
(9, 'Jessica Lane', '2001-06-11', 'Female', '623-228-3345'),
(10, 'George Oliver', '1955-10-10', 'Male', '412-555-9393'),
(11, 'Megan James', '1983-05-25', 'Female', '943-582-6642'),
(12, 'Lucas Grant', '2010-04-14', 'Male', '298-654-1120'),
(13, 'Chloe Ellis', '2004-08-17', 'Female', '905-222-5467'),
(14, 'Henry Webb', '1992-02-02', 'Male', '512-444-3333'),
(15, 'Mia Foster', '2008-03-23', 'Female', '432-848-9983'),
(16, 'Nathan Hughes', '1978-11-09', 'Male', '744-912-7654'),
(17, 'Grace Brooks', '1965-12-29', 'Female', '923-999-4444'),
(18, 'Oliver Sanders', '1987-03-01', 'Male', '888-333-2211'),
(19, 'Emily Reed', '2011-01-15', 'Female', '744-333-7772'),
(20, 'Jacob Wells', '1995-09-19', 'Male', '800-666-9981'),
(21, 'Ella Knight', '2002-07-05', 'Female', '999-100-2003'),
(22, 'Michael Baker', '1971-06-26', 'Male', '700-300-3991'),
(23, 'Lily Coleman', '1985-02-17', 'Female', '433-111-2222'),
(24, 'James Ortiz', '2007-05-20', 'Male', '834-111-5555'),
(25, 'Avery Howard', '1990-08-30', 'Female', '311-555-7770'),
(26, 'Lucas Adams', '2013-12-03', 'Male', '411-222-6666'),
(27, 'Aria Butler', '2009-11-08', 'Female', '777-888-4444'),
(28, 'Logan Turner', '1969-04-12', 'Male', '311-777-1234'),
(29, 'Zoe Russell', '2005-10-30', 'Female', '522-333-5555'),
(30, 'Ethan Griffin', '1998-01-27', 'Male', '801-444-9999');

INSERT INTO Patients (PatientID, FullName, DateOfBirth, Gender, ContactNumber) VALUES
(31, 'williams Charles', '1999-03-19', 'Female', '813-234-1899');

INSERT INTO Patients (PatientID, FullName, DateOfBirth, Gender, ContactNumber) VALUES
(32, 'Richard Howard', '1998-11-30', 'Female', '333-354-3269'),
(33, 'Griffin Zoe', '1999-12-20', 'male', '356-563-2589'),
(34, 'Avery Howard', '2002-04-10', 'Female', '369-598-2398'),
(35, 'Avery Howard', '2000-09-13', 'male', '367-258-1258');

-- 4. Appointments Table

drop table Appointments

CREATE TABLE Appointments (
    AppointmentID INT PRIMARY KEY,
    PatientID INT,
    DoctorID INT,
    AppointmentDate DATETIME NOT NULL,
    Reason NVARCHAR(255),
    FOREIGN KEY (PatientID) REFERENCES Patients(PatientID),
    FOREIGN KEY (DoctorID) REFERENCES Doctors(DoctorID)
);

INSERT INTO Appointments (AppointmentID, PatientID, DoctorID, AppointmentDate, Reason) VALUES
(1, 14, 8, '2025-04-11 21:44:57', 'Someone not American mouth.'),
(2, 15, 19, '2025-02-14 23:30:36', 'Attention positive actually information majority item.'),
(3, 9, 26, '2024-10-21 17:31:17', 'Religious itself safe whole establish space Mrs.'),
(4, 28, 1, '2024-12-07 20:12:28', 'Itself room environmental system store beautiful think.'),
(5, 25, 26, '2024-09-05 18:39:23', 'Now property from management foot maintain great.'),
(6, 7, 2, '2024-06-18 13:22:12', 'Health region sport voice avoid moment response.'),
(7, 10, 14, '2025-05-09 08:15:50', 'Moment she cover anyone staff mean.'),
(8, 13, 23, '2024-11-13 10:01:45', 'Once view surface technology they.'),
(9, 6, 3, '2025-03-30 09:19:33', 'Unit party individual participant according.'),
(10, 3, 9, '2024-08-01 14:49:22', 'Court media Congress image too.'),
(11, 30, 12, '2025-01-21 15:44:05', 'Build answer shake site move street.'),
(12, 11, 5, '2024-07-27 17:50:21', 'Large who nor dinner fly meeting.'),
(13, 16, 11, '2025-02-18 12:30:40', 'Above occur difference weight road.'),
(14, 20, 21, '2025-03-10 11:10:29', 'Age red interesting culture field.'),
(15, 8, 24, '2024-10-12 13:45:10', 'Tree our follow imagine operation.'),
(16, 5, 4, '2025-04-02 19:55:41', 'Add act team soon cut budget.'),
(17, 1, 6, '2025-01-05 16:00:00', 'Fund expert their either.'),
(18, 2, 17, '2024-09-16 09:35:15', 'Politics account night your phone.'),
(19, 12, 29, '2024-07-04 07:45:00', 'Customer cup note draw approach.'),
(20, 4, 10, '2025-03-22 18:20:10', 'Hospital bed process allow.'),
(21, 17, 7, '2024-12-12 15:00:00', 'Effort leader situation impact.'),
(22, 18, 13, '2024-11-20 10:30:30', 'Truth develop teacher tend.'),
(23, 19, 30, '2025-02-01 08:00:00', 'Family wind enjoy detail.'),
(24, 21, 15, '2025-01-30 17:45:00', 'Boy report explain offer.'),
(25, 22, 22, '2025-05-01 09:00:00', 'Idea movie kid approach.'),
(26, 23, 20, '2025-04-19 12:00:00', 'Exactly personal policy direction.'),
(27, 24, 16, '2024-06-28 13:30:00', 'Individual send choice tax.'),
(28, 26, 18, '2025-03-05 14:15:00', 'Street base southern receive.'),
(29, 27, 27, '2024-07-15 15:20:00', 'Serve experience she Republican.'),
(30, 29, 28, '2024-08-25 16:45:00', 'Because past travel close.'),
(31, 1, 3, '2025-06-05 09:30:00', 'Regular checkup'),
(32, 2, 5, '2025-06-07 11:00:00', 'Headache and dizziness'),
(33, 3, 2, '2025-06-10 14:15:00', 'Follow-up consultation'),
(34, 4, 7, '2025-06-12 10:45:00', 'Blood pressure monitoring'),
(35, 5, 4, '2025-06-15 16:00:00', 'Routine physical exam'),
(36, 6, 1, '2025-06-18 13:00:00', 'Post-surgery review'),
(37, 7, 6, '2025-06-20 10:30:00', 'Allergy testing'),
(38, 8, 9, '2025-06-22 15:45:00', 'Skin rash treatment'),
(39, 9, 8, '2025-06-24 09:00:00', 'Chronic cough evaluation'),
(40, 10, 10, '2025-06-25 11:30:00', 'Annual physical'),
(41, 11, 1, '2025-06-27 08:15:00', 'Chest pain investigation'),
(42, 12, 3, '2025-06-29 17:00:00', 'Diabetes follow-up'),
(43, 13, 2, '2025-07-01 10:00:00', 'General health consultation'),
(44, 14, 5, '2025-07-03 13:45:00', 'Muscle cramps'),
(45, 15, 6, '2025-07-05 09:30:00', 'Dietary consultation'),
(46, 16, 4, '2025-07-07 16:30:00', 'Fever and fatigue'),
(47, 17, 2, '2025-07-09 14:00:00', 'Routine prenatal care'),
(48, 18, 8, '2025-07-11 11:15:00', 'Eye checkup'),
(49, 19, 7, '2025-07-13 12:00:00', 'Skin irritation'),
(50, 20, 9, '2025-07-15 15:30:00', 'Back pain relief'),
(51, 21, 10, '2025-07-17 13:00:00', 'Throat infection'),
(52, 22, 1, '2025-07-19 10:45:00', 'Post-therapy review'),
(53, 23, 5, '2025-07-21 09:00:00', 'Sleep disorder'),
(54, 24, 6, '2025-07-23 14:30:00', 'Stress management'),
(55, 25, 3, '2025-07-25 08:00:00', 'Child wellness check'),
(56, 26, 2, '2025-07-27 10:15:00', 'Minor injury'),
(57, 27, 7, '2025-07-29 11:30:00', 'Migraine evaluation'),
(58, 28, 4, '2025-07-31 16:15:00', 'Sports physical'),
(59, 30, 9, '2025-08-02 09:45:00', 'Ear infection'),
(60, 29, 10, '2025-08-04 14:30:00', 'Rehabilitation session');

INSERT INTO Appointments (AppointmentID, PatientID, DoctorID, AppointmentDate, Reason) VALUES
(61, 31, 9, '2025-08-02 09:45:00', 'Ear infection')


INSERT INTO Appointments (AppointmentID, PatientID, DoctorID, AppointmentDate, Reason) VALUES
(62, 31, 9, '2025-08-02 09:45:00', 'Ear infection'),
(63, 31, 9, '2025-08-02 09:45:00', 'Ear infection');


INSERT INTO Appointments (AppointmentID, PatientID, DoctorID, AppointmentDate, Reason) VALUES
(64, 18, 8, '2025-07-11 11:15:00', 'Eye checkup'),(65, 18, 8, '2025-07-11 11:15:00', 'Eye checkup'),
(66, 18, 8, '2025-07-11 11:15:00', 'Eye checkup'),(67, 18, 8, '2025-07-11 11:15:00', 'Eye checkup');



--SP sp_Patientappointment_details for upcoming days

create or alter procedure sp_Patientappointment_details
	@patientname varchar(100) = NULL,
	@Doctorname varchar(100) = NULL,
	@DeptName varchar(100) = NULL,
	@startDate Date = NULL,
	@endate Date = NULL,
	@Upcoming_Appointment Bit  = 0
as
BEGIN
	set NOCOUNT ON;

	select 
		A.AppointmentID,
        P.PatientID,
        P.FullName AS PatientName,
	    P.Gender, 
        P.ContactNumber,
        D.DoctorID,
        D.Name AS DoctorName,
        D.Specialty,
        Dep.DepartmentName,
        A.AppointmentDate,
        A.Reason,
		case 
		when a.appointmentDate >= GETDATE() then 'Future'
		else 'past'
		end as appointment_status

		from Appointments as a inner join Patients as P on a.PatientID = p.PatientID
		inner join Doctors as D on D.DoctorID = a.DoctorID
		inner join Departments as Dep on d.DepartmentID = dep.DepartmentID

		where 
		(@patientname is null or p.FullName like '%' + @patientname + '%') and
		(@Doctorname is null or D.Name like '%' + @Doctorname + '%') and
		(@DeptName is null or Dep.DepartmentName like '%' + @DeptName + '%') and
		(@startDate is null or a.AppointmentDate >= @startDate ) and 
		(@endate is null or a.AppointmentDate <= @endate ) and 
		(@Upcoming_Appointment is null or a.AppointmentDate >= GETDATE() or @Upcoming_Appointment = 0)

	End

	
	EXEC sp_Patientappointment_details 
    @PatientName = 'Oliver Sanders', 
    @StartDate = '2024-05-01', 
    @endate = '2025-12-31',
	@Upcoming_Appointment = 1;
	


	select * from Appointments
	select * from Patients
	select * from Doctors
	select * from Departments;


--List all doctors with their corresponding department names.

select 
	D.Name,
	Dept.DepartmentName
	from Doctors as D left join Departments as Dept
	on D.DepartmentID = Dept.DepartmentID

--Display appointments with patient names and doctor names.
	
select
	P.FullName as patientName,
	D.name as DoctorName,
	A.AppointmentDate 
	from patients as P inner join Appointments as A
	on P.PatientID = a.PatientID inner join Doctors as D 
	on A.DoctorID = D.DoctorID 


--List all patients along with their appointment dates and reasons.

select 
	p.FullName,
	a.AppointmentDate,
	a.reason 
	from Patients as P inner join Appointments as a 
	on p.PatientID = a.PatientID order by a.AppointmentDate Desc


--Show upcoming appointments (after today).

select
	(P.FullName)as patientName,
	A.AppointmentDate
	from Patients as P inner join Appointments as A
	on P.PatientID = A.PatientID
	where a.AppointmentDate > CAST(GETDATE() + 1 AS DATE)



--List appointments for a specific doctor.

select 
	D.Name,
	a.appointmentDate as Appointment
	from Doctors as D inner join Appointments as a 
	on d.DoctorID = a.DoctorID where D.DoctorID = 4
	

--Find all appointments for a specific patient.

select 
	p.fullname as PatientName,
	a.appointmentDate as Appointment,
	a.Reason as Appointment_Reason
	from Patients as p inner join Appointments as a 
	on p.PatientID = a.PatientID where p.PatientID = 4



--Retrieve all male/female patients.

select FullName,Gender from Patients 
order by Gender

--Count the number of doctors in each department.

select 
	Dep.DepartmentName, 
	count(D.Name) As No_of_Doctors
	from Departments as Dep inner join Doctors as D
	on Dep.DepartmentID = D.DepartmentID 
	Group by Dep.DepartmentName


--Count how many appointments each doctor has.

select D.Name,count(a.appointmentDate)as No_of_Appointments from Appointments as a
inner join Doctors as D on a.DoctorID = D.DoctorID Group by D.Name


--Find which doctor has the most appointments.

select Top 1 D.Name,count(a.appointmentDate)as No_of_Appointments from Appointments as a inner join Doctors as D
on a.DoctorID = D.DoctorID Group by D.Name order by No_of_Appointments desc

SELECT 
    Name, 
    No_of_Appointments
FROM (
    SELECT 
        D.Name,
        COUNT(A.AppointmentDate) AS No_of_Appointments
    FROM 
        Appointments AS A
    INNER JOIN 
        Doctors AS D ON A.DoctorID = D.DoctorID
    GROUP BY 
        D.Name
) AS Sub
WHERE 
    No_of_Appointments = (
        SELECT MAX(DoctorCount)
        FROM (
            SELECT COUNT(*) AS DoctorCount
            FROM Appointments
            GROUP BY DoctorID
        ) AS CountSub
    );


--Show how many appointments are scheduled per day.

Select 
	cast(appointmentDate as Date)As AppointmentDate,
	count(appointmentDate)as Appointments_Per_Day 
	from Appointments 
	Group by cast(appointmentDate as Date)


--List doctors who don’t have any upcoming appointments.
 
--Using JOINS

Select Name,
Count(appointmentDate) from 
(select 
	D.Name,
	a.AppointmentDate
	from Doctors as D left join Appointments as a
	on a.DoctorID = D.DoctorID
	and a.AppointmentDate >= GETDATE() )as Future_Appointments where 
	appointmentDate is null
	group by Name


--USING SUBQUERY

Select 
	Name,
	Count(appointmentDate)as NO_Future_Appointments from 
(select 
	D.Name,
	a.AppointmentDate
	from Doctors as D left join Appointments as a
	on a.DoctorID = D.DoctorID
	and a.AppointmentDate >= GETDATE() )as Future_Appointments 
	where appointmentDate is null
	group by Name 
	order by Name



--Find the department with the highest number of doctors.

Select
	DepartmentName,
	DoctorsCount 
	from
	(select 
		Dept.DepartmentName,
		count(Name)as DoctorsCount
		from Departments as Dept right join Doctors as D 
		on Dept.DepartmentID = D.DepartmentID 
		group by Dept.DepartmentName)as Sub 
		where DoctorsCount = ( select max(count_Doctor) from 
		(select count(*)as count_Doctor from Doctors group by DepartmentID)as inside_count)



--Retrieve the patient(s) with the most appointments.


select 
	PatientName,
	patient_appointment from 
(select 
	p.FullName as PatientName, 
	count(a.AppointmentDate)as patient_appointment
	from Patients as p left join Appointments as a 
	on p.PatientID = a.PatientID
	group by p.FullName) as Patient_Status
	where patient_appointment =
	(select max(patient_count) 
	from
	(select count(AppointmentID)as patient_count 
	from Appointments group by PatientID)as sub);


--Stored procedure to get all appointments for a given DoctorID.

create or alter procedure sp_DoctorAppointment_Details
@DoctorID int = Null,
@DoctorName varchar(100) = Null
As
Begin

select 
	p.FullName as PatientName,
	p.ContactNumber,
	cast(a.appointmentDate as Date)as Appointment_Date,
	Format(a.appointmentDate,'HH:mm')as Appointment_Time,
	case 
	when a.AppointmentDate>=GETDATE() then 'Upcoming'
	else 'Viewed' 
	end as Appointment_Status
	From Patients as p left join appointments as a
	on p.patientId = a.patientId 
	left join Doctors as D 
	on D.DoctorID = a.DoctorID
	where (D.DoctorID = @DoctorID or @DoctorID IS NULL) And
	(D.Name = @DoctorName or @DoctorName IS NULL)

	select count(*)as Total_Appointments,
	sum
	(case
	when 
	a.appointmentDate >= GETDATE() then 1 else 0 end )as Upcoming_appointments,
	sum
	(case
	when 
	a.appointmentDate < GETDATE() then 1 else 0 end )as Past_appointments
	from appointments As a inner join Doctors as D on a.DoctorID = D.DoctorID
	where (D.DoctorID = @DoctorID or @DoctorID is null) and 
	(D.Name = @DoctorName or @DoctorName is null)
		

End


Exec sp_DoctorAppointment_Details Null,'Allison Hill';

create or alter procedure sp_new_appointment
@patientID int,
@DoctorID int,
@patientName varchar(100),
@DoctorName varchar(100) = Null,
@Appointment_date datetime,
@Reason varchar(max) = NULL
as
Begin
--Checking for patient Existence

if not exists(select 1 from patients where FullName = @patientName)
Begin
	RAISERROR('This patient not found',16,1);
	Return
End

--Checking for Doctor Existence


if not exists(select 1 from Doctors where Name = @DoctorName)
Begin
	RAISERROR('This Doctor not found',16,1);
	Return
End

insert into Appointments(AppointmentID,PatientID,DoctorID,AppointmentDate,Reason) Values
((select isNull(max(AppointmentID),0)+1 from Appointments),@patientID,@DoctorID,@Appointment_date,@Reason)

print 'Appointment Scheduled Successfully'

End

Exec sp_new_appointment @patientID=11,@DoctorID=11,
@patientName = 'Megan James',@DoctorName = 'Christopher May',
@Appointment_date = '2025-09-22 20:42:56.000',@Reason='Cardiologist';


	select * from Appointments 
	select * from Patients
	select * from Doctors
	select * from Departments;

	use master 

