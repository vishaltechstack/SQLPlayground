-- ========================================
-- Insert values in Airports table
-- ========================================

INSERT INTO Airports (airport_id, airport_name, city, country, iata_code) VALUES
(1001, 'Indira Gandhi International Airport', 'Delhi', 'India', 'DEL'),
(1002, 'Chhatrapati Shivaji Maharaj International Airport', 'Mumbai', 'India', 'BOM'),
(1003, 'Kempegowda International Airport', 'Bangalore', 'India', 'BLR'),
(1004, 'Chennai International Airport', 'Chennai', 'India', 'MAA'),
(1005, 'Heathrow Airport', 'London', 'United Kingdom', 'LHR'),
(1006, 'Dubai International Airport', 'Dubai', 'UAE', 'DXB'),
(1007, 'Singapore Changi Airport', 'Singapore', 'Singapore', 'SIN'),
(1008, 'Los Angeles International Airport', 'Los Angeles', 'USA', 'LAX'),
(1009, 'John F. Kennedy International Airport', 'New York', 'USA', 'JFK'),
(1010, 'Frankfurt Airport', 'Frankfurt', 'Germany', 'FRA'),
(1011, 'Tokyo Haneda Airport', 'Tokyo', 'Japan', 'HND'),
(1012, 'Sydney Kingsford Smith Airport', 'Sydney', 'Australia', 'SYD'),
(1013, 'Suvarnabhumi Airport', 'Bangkok', 'Thailand', 'BKK'),
(1014, 'Amsterdam Schiphol Airport', 'Amsterdam', 'Netherlands', 'AMS'),
(1015, 'Istanbul Airport', 'Istanbul', 'Turkey', 'IST')

-- ========================================
-- Insert values in Airlines table
-- ========================================

INSERT INTO Airlines (airline_id, airline_name, country) VALUES
(2001, 'Air India', 'India'),
(2002, 'IndiGo', 'India'),
(2003, 'Vistara', 'India'),
(2004, 'SpiceJet', 'India'),
(2005, 'Emirates', 'UAE'),
(2006, 'Singapore Airlines', 'Singapore'),
(2007, 'Lufthansa', 'Germany'),
(2008, 'British Airways', 'United Kingdom'),
(2009, 'Qatar Airways', 'Qatar'),
(2010, 'American Airlines', 'USA');

-- ========================================
-- Insert values in Aircrafts table
-- ========================================

INSERT INTO Aircrafts (aircraft_id, aircraft_model, seating_capacity) VALUES
(3001, 'Airbus A320-200', 180),
(3002, 'Boeing 737-800', 189),
(3003, 'Airbus A321neo', 236),
(3004, 'Boeing 787-9 Dreamliner', 300),
(3005, 'Airbus A380-800', 555),
(3006, 'Boeing 777-300ER', 396),
(3007, 'Airbus A350-900', 325),
(3008, 'Boeing 737 MAX 8', 178),
(3009, 'Embraer E195-E2', 146),
(3010, 'ATR 72-600', 78),
(3011, 'Bombardier CRJ-900', 90),
(3012, 'Airbus A330-900neo', 287);

-- ========================================
-- Insert values in CrewMembers table
-- ========================================

INSERT INTO CrewMembers (crew_id, crew_name, role) VALUES
(9001, 'Captain Rajesh Kumar', 'Pilot'),
(9002, 'Captain Anjali Sharma', 'Pilot'),
(9003, 'First Officer Vikram Singh', 'Co-Pilot'),
(9004, 'First Officer Priya Mehta', 'Co-Pilot'),
(9005, 'Neha Gupta', 'Cabin Crew'),
(9006, 'Arjun Patel', 'Cabin Crew'),
(9007, 'Sneha Reddy', 'Cabin Crew'),
(9008, 'Rohan Desai', 'Cabin Crew'),
(9009, 'Captain Michael Brown', 'Pilot'),
(9010, 'First Officer Sarah Wilson', 'Co-Pilot'),
(9011, 'Amit Verma', 'Cabin Crew'),
(9012, 'Pooja Nair', 'Cabin Crew'),
(9013, 'Captain David Lee', 'Pilot'),
(9014, 'First Officer Emma Johnson', 'Co-Pilot'),
(9015, 'Karan Malhotra', 'Cabin Crew'),
(9016, 'Riya Kapoor', 'Cabin Crew'),
(9017, 'Captain Fatima Ahmed', 'Pilot'),
(9018, 'First Officer Omar Khan', 'Co-Pilot'),
(9019, 'Sonia Thakur', 'Cabin Crew'),
(9020, 'Vikrant Joshi', 'Cabin Crew'),
(9021, 'Captain Liam Smith', 'Pilot'),
(9022, 'First Officer Olivia Taylor', 'Co-Pilot'),
(9023, 'Deepak Rao', 'Cabin Crew'),
(9024, 'Meera Iyer', 'Cabin Crew'),
(9025, 'Captain Chen Wei', 'Pilot'),
(9026, 'First Officer Liu Mei', 'Co-Pilot'),
(9027, 'Rahul Bose', 'Cabin Crew'),
(9028, 'Ananya Sen', 'Cabin Crew'),
(9029, 'Captain James Miller', 'Pilot'),
(9030, 'First Officer Sophia Garcia', 'Co-Pilot');

-- ========================================
-- Insert values in Flights table
-- ========================================

INSERT INTO Flights (flight_id, airline_id, aircraft_id, departure_airport_id, arrival_airport_id, departure_time, arrival_time, base_fare) VALUES
(4001, 2002, 3001, 1001, 1002, '2025-12-20 06:15:00', '2025-12-20 08:30:00', 4899.00), -- DEL→BOM IndiGo A320
(4002, 2002, 3002, 1002, 1001, '2025-12-20 09:45:00', '2025-12-20 12:00:00', 5100.00), -- BOM→DEL
(4003, 2002, 3001, 1001, 1003, '2025-12-20 07:30:00', '2025-12-20 09:50:00', 5599.00), -- DEL→BLR
(4004, 2003, 3003, 1003, 1001, '2025-12-20 18:20:00', '2025-12-20 20:45:00', 7800.00), -- BLR→DEL Vistara A321neo
(4005, 2004, 3008, 1002, 1004, '2025-12-21 14:10:00', '2025-12-21 16:25:00', 4200.00), -- BOM→MAA SpiceJet 737MAX
(4006, 2001, 3004, 1001, 1005, '2025-12-22 23:55:00', '2025-12-23 08:45:00', 68500.00), -- DEL→LHR Air India 787
(4007, 2002, 3001, 1004, 1001, '2025-12-23 20:30:00', '2025-12-23 22:45:00', 6200.00), -- MAA→DEL
(4008, 2003, 3007, 1001, 1007, '2025-12-24 02:15:00', '2025-12-24 10:30:00', 58900.00), -- DEL→SIN Vistara A350
(4009, 2005, 3005, 1006, 1001, '2025-12-25 03:40:00', '2025-12-25 07:55:00', 42800.00), -- DXB→DEL Emirates A380
(4010, 2005, 3006, 1006, 1005, '2025-12-25 01:20:00', '2025-12-25 07:50:00', 51200.00), -- DXB→LHR 777-300ER
(4011, 2009, 3007, 1009, 1001, '2025-12-26 19:30:00', '2025-12-27 12:45:00', 98500.00), -- JFK→DEL Qatar via DOH
(4012, 2006, 3007, 1007, 1011, '2025-12-27 02:10:00', '2025-12-27 09:40:00', 45600.00), -- SIN→HND SIA A350
(4013, 2007, 3004, 1010, 1001, '2025-12-28 11:15:00', '2025-12-28 23:55:00', 67800.00), -- FRA→DEL Lufthansa 787
(4014, 2008, 3006, 1005, 1009, '2025-12-29 13:40:00', '2025-12-29 17:20:00', 61200.00), -- LHR→JFK BA 777
(4015, 2002, 3001, 1001, 1002, '2025-12-21 11:30:00', '2025-12-21 13:45:00', 7200.00),
(4016, 2002, 3002, 1002, 1001, '2025-12-21 15:00:00', '2025-12-21 17:20:00', 6900.00),
(4017, 2002, 3001, 1001, 1003, '2025-12-22 14:20:00', '2025-12-22 16:40:00', 6300.00),
(4018, 2003, 3003, 1003, 1002, '2025-12-23 10:10:00', '2025-12-23 12:30:00', 8900.00),
(4019, 2004, 3008, 1004, 1003, '2025-12-24 17:45:00', '2025-12-24 19:00:00', 3800.00),
(4020, 2002, 3001, 1001, 1004, '2025-12-25 08:00:00', '2025-12-25 10:15:00', 5800.00),
(4021, 2005, 3005, 1006, 1008, '2025-12-26 22:30:00', '2025-12-27 06:45:00', 65800.00), -- DXB→LAX
(4022, 2010, 3006, 1008, 1009, '2025-12-27 09:15:00', '2025-12-27 17:30:00', 48900.00), -- LAX→JFK American
(4023, 2009, 3007, 1015, 1001, '2025-12-28 04:20:00', '2025-12-28 11:50:00', 52300.00), -- IST→DEL Turkish (via Qatar route style)
(4024, 2006, 3005, 1007, 1014, '2025-12-29 19:55:00', '2025-12-30 02:30:00', 71200.00), -- SIN→AMS SIA A380
(4025, 2002, 3001, 1001, 1002, '2025-12-30 19:40:00', '2025-12-30 21:55:00', 8300.00),
(4026, 2001, 3004, 1002, 1006, '2025-12-31 00:15:00', '2025-12-31 04:30:00', 39800.00),
(4027, 2003, 3007, 1001, 1011, '2026-01-01 21:30:00', '2026-01-02 06:15:00', 78900.00),
(4028, 2005, 3006, 1006, 1012, '2026-01-02 23:50:00', '2026-01-03 14:20:00', 85600.00),
(4029, 2007, 3004, 1010, 1005, '2026-01-03 08:45:00', '2026-01-03 11:10:00', 42300.00),
(4030, 2002, 3002, 1003, 1001, '2026-01-04 12:15:00', '2026-01-04 14:35:00', 6700.00),
(4031, 2002, 3001, 1001, 1003, '2026-01-05 16:20:00', '2026-01-05 18:40:00', 7100.00),
(4032, 2004, 3008, 1002, 1001, '2026-01-06 07:10:00', '2026-01-06 09:25:00', 5400.00),
(4033, 2003, 3003, 1004, 1002, '2026-01-07 11:55:00', '2026-01-07 14:10:00', 6100.00),
(4034, 2001, 3004, 1001, 1008, '2026-01-08 22:40:00', '2026-01-09 07:15:00', 112500.00),
(4035, 2005, 3005, 1006, 1013, '2026-01-09 04:30:00', '2026-01-09 09:45:00', 35600.00)

-- ========================================
-- Insert values in FlightCrew table
-- ========================================

INSERT INTO FlightCrew (flight_id, crew_id, assigned_role) VALUES
(4001, 9001, 'Pilot'),
(4001, 9003, 'Co-Pilot'),
(4001, 9005, 'Cabin Crew'),
(4001, 9006, 'Cabin Crew'),
(4001, 9007, 'Cabin Crew'),
(4001, 9008, 'Cabin Crew'),
(4002, 9002, 'Pilot'),
(4002, 9004, 'Co-Pilot'),
(4002, 9011, 'Cabin Crew'),
(4002, 9012, 'Cabin Crew'),
(4002, 9015, 'Cabin Crew'),
(4002, 9016, 'Cabin Crew'),
(4003, 9009, 'Pilot'),
(4003, 9010, 'Co-Pilot'),
(4003, 9019, 'Cabin Crew'),
(4003, 9020, 'Cabin Crew'),
(4003, 9023, 'Cabin Crew'),
(4003, 9024, 'Cabin Crew'),
(4004, 9013, 'Pilot'),
(4004, 9014, 'Co-Pilot'),
(4004, 9027, 'Cabin Crew'),
(4004, 9028, 'Cabin Crew'),
(4004, 9011, 'Cabin Crew'),
(4004, 9015, 'Cabin Crew'),
(4004, 9019, 'Cabin Crew'),
(4005, 9017, 'Pilot'),
(4005, 9018, 'Co-Pilot'),
(4005, 9005, 'Cabin Crew'),
(4005, 9006, 'Cabin Crew'),
(4005, 9007, 'Cabin Crew'),
(4005, 9008, 'Cabin Crew'),
(4006, 9021, 'Pilot'),
(4006, 9022, 'Co-Pilot'),
(4006, 9025, 'Cabin Crew'), (4006, 9026, 'Cabin Crew'), (4006, 9027, 'Cabin Crew'),
(4006, 9028, 'Cabin Crew'), (4006, 9029, 'Cabin Crew'), (4006, 9030, 'Cabin Crew'),
(4006, 9005, 'Cabin Crew'), (4006, 9006, 'Cabin Crew'), (4006, 9011, 'Cabin Crew'),
(4006, 9012, 'Cabin Crew'),
(4007, 9001, 'Pilot'), (4007, 9004, 'Co-Pilot'), (4007, 9015, 'Cabin Crew'), (4007, 9016, 'Cabin Crew'), (4007, 9019, 'Cabin Crew'), (4007, 9020, 'Cabin Crew'),
(4008, 9002, 'Pilot'), (4008, 9003, 'Co-Pilot'), (4008, 9023, 'Cabin Crew'), (4008, 9024, 'Cabin Crew'), (4008, 9027, 'Cabin Crew'), (4008, 9028, 'Cabin Crew'), (4008, 9005, 'Cabin Crew'), (4008, 9006, 'Cabin Crew'),
(4009, 9017, 'Pilot'), (4009, 9018, 'Co-Pilot'), (4009, 9007, 'Cabin Crew'), (4009, 9008, 'Cabin Crew'), (4009, 9011, 'Cabin Crew'), (4009, 9012, 'Cabin Crew'),
(4010, 9021, 'Pilot'), (4010, 9022, 'Co-Pilot'), (4010, 9015, 'Cabin Crew'), (4010, 9019, 'Cabin Crew'), (4010, 9023, 'Cabin Crew'), (4010, 9027, 'Cabin Crew'), (4010, 9029, 'Cabin Crew'), (4010, 9030, 'Cabin Crew'),
(4011, 9009, 'Pilot'), (4011, 9010, 'Co-Pilot'), (4011, 9005, 'Cabin Crew'), (4011, 9006, 'Cabin Crew'), (4011, 9011, 'Cabin Crew'), (4011, 9012, 'Cabin Crew'), (4011, 9015, 'Cabin Crew'), (4011, 9016, 'Cabin Crew'),
(4012, 9013, 'Pilot'), (4012, 9014, 'Co-Pilot'), (4012, 9019, 'Cabin Crew'), (4012, 9020, 'Cabin Crew'), (4012, 9023, 'Cabin Crew'), (4012, 9024, 'Cabin Crew'),
(4013, 9025, 'Pilot'), (4013, 9026, 'Co-Pilot'), (4013, 9027, 'Cabin Crew'), (4013, 9028, 'Cabin Crew'), (4013, 9029, 'Cabin Crew'), (4013, 9030, 'Cabin Crew'), (4013, 9005, 'Cabin Crew'), (4013, 9006, 'Cabin Crew'), (4013, 9007, 'Cabin Crew'), (4013, 9008, 'Cabin Crew'),
(4014, 9001, 'Pilot'), (4014, 9003, 'Co-Pilot'), (4014, 9011, 'Cabin Crew'), (4014, 9012, 'Cabin Crew'), (4014, 9015, 'Cabin Crew'), (4014, 9016, 'Cabin Crew'), (4014, 9019, 'Cabin Crew'), (4014, 9020, 'Cabin Crew'),
(4015, 9002, 'Pilot'), (4015, 9004, 'Co-Pilot'), (4015, 9023, 'Cabin Crew'), (4015, 9024, 'Cabin Crew'), (4015, 9027, 'Cabin Crew'), (4015, 9028, 'Cabin Crew'),
(4016, 9017, 'Pilot'), (4016, 9018, 'Co-Pilot'), (4016, 9005, 'Cabin Crew'), (4016, 9006, 'Cabin Crew'), (4016, 9007, 'Cabin Crew'), (4016, 9008, 'Cabin Crew'),
(4017, 9021, 'Pilot'), (4017, 9022, 'Co-Pilot'), (4017, 9011, 'Cabin Crew'), (4017, 9012, 'Cabin Crew'), (4017, 9015, 'Cabin Crew'), (4017, 9016, 'Cabin Crew'),
(4018, 9009, 'Pilot'), (4018, 9010, 'Co-Pilot'), (4018, 9019, 'Cabin Crew'), (4018, 9020, 'Cabin Crew'), (4018, 9023, 'Cabin Crew'), (4018, 9024, 'Cabin Crew'),
(4019, 9013, 'Pilot'), (4019, 9014, 'Co-Pilot'), (4019, 9027, 'Cabin Crew'), (4019, 9028, 'Cabin Crew'), (4019, 9029, 'Cabin Crew'), (4019, 9030, 'Cabin Crew'),
(4020, 9025, 'Pilot'), (4020, 9026, 'Co-Pilot'), (4020, 9005, 'Cabin Crew'), (4020, 9006, 'Cabin Crew'), (4020, 9007, 'Cabin Crew'), (4020, 9008, 'Cabin Crew'),
(4021, 9001, 'Pilot'), (4021, 9003, 'Co-Pilot'), (4021, 9011, 'Cabin Crew'), (4021, 9012, 'Cabin Crew'), (4021, 9015, 'Cabin Crew'), (4021, 9016, 'Cabin Crew'), (4021, 9019, 'Cabin Crew'), (4021, 9020, 'Cabin Crew'), (4021, 9023, 'Cabin Crew'), (4021, 9024, 'Cabin Crew'),
(4022, 9002, 'Pilot'), (4022, 9004, 'Co-Pilot'), (4022, 9027, 'Cabin Crew'), (4022, 9028, 'Cabin Crew'), (4022, 9029, 'Cabin Crew'), (4022, 9030, 'Cabin Crew'),
(4023, 9017, 'Pilot'), (4023, 9018, 'Co-Pilot'), (4023, 9005, 'Cabin Crew'), (4023, 9006, 'Cabin Crew'), (4023, 9007, 'Cabin Crew'), (4023, 9008, 'Cabin Crew'),
(4024, 9021, 'Pilot'), (4024, 9022, 'Co-Pilot'), (4024, 9011, 'Cabin Crew'), (4024, 9012, 'Cabin Crew'), (4024, 9015, 'Cabin Crew'), (4024, 9016, 'Cabin Crew'), (4024, 9019, 'Cabin Crew'), (4024, 9020, 'Cabin Crew'),
(4025, 9009, 'Pilot'), (4025, 9010, 'Co-Pilot'), (4025, 9023, 'Cabin Crew'), (4025, 9024, 'Cabin Crew'), (4025, 9027, 'Cabin Crew'), (4025, 9028, 'Cabin Crew'),
(4026, 9013, 'Pilot'), (4026, 9014, 'Co-Pilot'), (4026, 9029, 'Cabin Crew'), (4026, 9030, 'Cabin Crew'), (4026, 9005, 'Cabin Crew'), (4026, 9006, 'Cabin Crew'),
(4027, 9025, 'Pilot'), (4027, 9026, 'Co-Pilot'), (4027, 9007, 'Cabin Crew'), (4027, 9008, 'Cabin Crew'), (4027, 9011, 'Cabin Crew'), (4027, 9012, 'Cabin Crew'), (4027, 9015, 'Cabin Crew'), (4027, 9016, 'Cabin Crew'), (4027, 9019, 'Cabin Crew'), (4027, 9020, 'Cabin Crew'),
(4028, 9001, 'Pilot'), (4028, 9003, 'Co-Pilot'), (4028, 9023, 'Cabin Crew'), (4028, 9024, 'Cabin Crew'), (4028, 9027, 'Cabin Crew'), (4028, 9028, 'Cabin Crew'), (4028, 9029, 'Cabin Crew'), (4028, 9030, 'Cabin Crew'),
(4029, 9002, 'Pilot'), (4029, 9004, 'Co-Pilot'), (4029, 9005, 'Cabin Crew'), (4029, 9006, 'Cabin Crew'), (4029, 9007, 'Cabin Crew'), (4029, 9008, 'Cabin Crew'),
(4030, 9017, 'Pilot'), (4030, 9018, 'Co-Pilot'), (4030, 9011, 'Cabin Crew'), (4030, 9012, 'Cabin Crew'), (4030, 9015, 'Cabin Crew'), (4030, 9016, 'Cabin Crew'),
(4031, 9021, 'Pilot'), (4031, 9022, 'Co-Pilot'), (4031, 9019, 'Cabin Crew'), (4031, 9020, 'Cabin Crew'), (4031, 9023, 'Cabin Crew'), (4031, 9024, 'Cabin Crew'),
(4032, 9009, 'Pilot'), (4032, 9010, 'Co-Pilot'), (4032, 9027, 'Cabin Crew'), (4032, 9028, 'Cabin Crew'), (4032, 9029, 'Cabin Crew'), (4032, 9030, 'Cabin Crew'),
(4033, 9013, 'Pilot'), (4033, 9014, 'Co-Pilot'), (4033, 9005, 'Cabin Crew'), (4033, 9006, 'Cabin Crew'), (4033, 9007, 'Cabin Crew'), (4033, 9008, 'Cabin Crew'),
(4034, 9025, 'Pilot'), (4034, 9026, 'Co-Pilot'), (4034, 9011, 'Cabin Crew'), (4034, 9012, 'Cabin Crew'), (4034, 9015, 'Cabin Crew'), (4034, 9016, 'Cabin Crew'), (4034, 9019, 'Cabin Crew'), (4034, 9020, 'Cabin Crew'), (4034, 9023, 'Cabin Crew'), (4034, 9024, 'Cabin Crew'),
(4035, 9001, 'Pilot'), (4035, 9003, 'Co-Pilot'), (4035, 9027, 'Cabin Crew'), (4035, 9028, 'Cabin Crew'), (4035, 9029, 'Cabin Crew'), (4035, 9030, 'Cabin Crew')


-- ========================================
-- Insert values in Passengers table
-- ========================================

INSERT INTO Passengers (passenger_id, first_name, last_name, gender, date_of_birth, phone, email) VALUES
(5001, 'Aarav', 'Sharma', 'Male', '1992-03-15', '+919876543210', 'aarav.sharma@gmail.com'),
(5002, 'Diya', 'Patel', 'Female', '1995-07-22', '+919876543211', 'diya.patel@gmail.com'),
(5003, 'Arjun', 'Singh', 'Male', '1988-11-30', '+919876543212', 'arjun.singh88@yahoo.com'),
(5004, 'Isha', 'Mehta', 'Female', '1999-01-10', '+919876543213', 'isha.mehta@outlook.com'),
(5005, 'Vikram', 'Reddy', 'Male', '1990-05-18', '+919876543214', 'vikram.reddy@gmail.com'),
(5006, 'Ananya', 'Nair', 'Female', '1997-12-04', '+919876543215', 'ananya.nair@gmail.com'),
(5007, 'Rohan', 'Gupta', 'Male', '1993-08-27', '+919876543216', 'rohan.gupta93@gmail.com'),
(5008, 'Sia', 'Verma', 'Female', '1996-02-14', '+919876543217', 'sia.verma@hotmail.com'),
(5009, 'Kabir', 'Joshi', 'Male', '1985-10-05', '+919876543218', 'kabir.joshi@company.com'),
(5010, 'Myra', 'Kapoor', 'Female', '2000-06-19', '+919876543219', 'myra.kapoor@gmail.com'),
(5011, 'Ayaan', 'Malhotra', 'Male', '1991-04-23', '+919876543220', 'ayaan.malhotra@gmail.com'),
(5012, 'Zara', 'Thakur', 'Female', '1998-09-30', '+919876543221', 'zara.thakur@yahoo.com'),
(5013, 'Reyansh', 'Bose', 'Male', '1994-07-11', '+919876543222', 'reyansh.bose@gmail.com'),
(5014, 'Saisha', 'Iyer', 'Female', '1999-03-22', '+919876543223', 'saisha.iyer@gmail.com'),
(5015, 'Advik', 'Rao', 'Male', '1989-12-01', '+919876543224', 'advik.rao@outlook.com'),
(5016, 'Kiara', 'Sen', 'Female', '1996-05-17', '+919876543225', 'kiara.sen@gmail.com'),
(5017, 'Aaradhya', 'Das', 'Female', '2002-11-28', '+919876543226', 'aaradhya.das@gmail.com'),
(5018, 'Zoya', 'Khan', 'Female', '2001-09-12', '+919876543227', 'zoya.khan@hotmail.com'),
(5019, 'Vihaan', 'Agarwal', 'Male', '1993-02-28', '+919876543228', 'vihaan.agarwal@gmail.com'),
(5020, 'Aahana', 'Chopra', 'Female', '1997-10-03', '+919876543229', 'aahana.chopra@gmail.com'),
(5021, 'Ishaan', 'Mishra', 'Male', '1990-01-19', '+919876543230', 'ishaan.mishra@gmail.com'),
(5022, 'Saanvi', 'Yadav', 'Female', '1998-04-08', '+919876543231', 'saanvi.yadav@gmail.com'),
(5023, 'Aarush', 'Banerjee', 'Male', '1987-06-25', '+919876543232', 'aarush.banerjee@gmail.com'),
(5024, 'Riya', 'Shah', 'Female', '2000-08-14', '+919876543233', 'riya.shah@gmail.com'),
(5025, 'Aryan', 'Jain', 'Male', '1995-12-07', '+919876543234', 'aryan.jain95@gmail.com'),
(5026, 'Anvi', 'Goel', 'Female', '1999-07-30', '+919876543235', 'anvi.goel@gmail.com'),
(5027, 'Krishna', 'Pandey', 'Male', '1991-09-05', '+919876543236', 'krishna.pandey@gmail.com'),
(5028, 'Navya', 'Saxena', 'Female', '1996-11-18', '+919876543237', 'navya.saxena@gmail.com'),
(5029, 'Aditya', 'Trivedi', 'Male', '1989-03-27', '+919876543238', 'aditya.trivedi@gmail.com'),
(5030, 'Pari', 'Dubey', 'Female', '2001-05-11', '+919876543239', 'pari.dubey@gmail.com'),
(5031, 'Shaurya', 'Srivastava', 'Male', '1994-10-22', '+919876543240', 'shaurya.sriv@gmail.com'),
(5032, 'Amaya', 'Chaudhary', 'Female', '1998-02-09', '+919876543241', 'amaya.chaudhary@gmail.com'),
(5033, 'Aarav', 'Gill', 'Male', '1992-07-16', '+919876543242', 'aarav.gill@gmail.com'),
(5034, 'Mishti', 'Bhatia', 'Female', '2000-12-25', '+919876543243', 'mishti.bhatia@gmail.com'),
(5035, 'Yuvaan', 'Khanna', 'Male', '1993-04-04', '+919876543244', 'yuvaan.khanna@gmail.com'),
(5036, 'Siya', 'Sethi', 'Female', '1997-08-19', '+919876543245', 'siya.sethi@gmail.com'),
(5037, 'Rudra', 'Mittal', 'Male', '1990-01-30', '+919876543246', 'rudra.mittal@gmail.com'),
(5038, 'Anaisha', 'Arora', 'Female', '1999-06-06', '+919876543247', 'anaisha.arora@gmail.com'),
(5039, 'Atharv', 'Wadhwa', 'Male', '1995-09-23', '+919876543248', 'atharv.wadhwa@gmail.com'),
(5040, 'Prisha', 'Khurana', 'Female', '1998-03-15', '+919876543249', 'prisha.khurana@gmail.com'),
(5041, 'David', 'Wilson', 'Male', '1986-11-11', '+12025550123', 'david.wilson@usa.com'),
(5042, 'Emma', 'Johnson', 'Female', '1994-05-20', '+12025550124', 'emma.j@gmail.com'),
(5043, 'Michael', 'Brown', 'Male', '1988-08-08', '+12025550125', 'michael.brown@gmail.com'),
(5044, 'Sophia', 'Davis', 'Female', '1997-02-28', '+12025550126', 'sophia.davis@outlook.com'),
(5045, 'James', 'Miller', 'Male', '1991-10-17', '+12025550127', 'james.miller@yahoo.com'),
(5046, 'Olivia', 'Garcia', 'Female', '2000-07-04', '+12025550128', 'olivia.garcia@gmail.com'),
(5047, 'Liam', 'Martinez', 'Male', '1993-12-12', '+12025550129', 'liam.martinez@gmail.com'),
(5048, 'Amelia', 'Taylor', 'Female', '1996-09-09', '+12025550130', 'amelia.taylor@gmail.com'),
(5049, 'Noah', 'Anderson', 'Male', '1989-04-05', '+12025550131', 'noah.anderson@gmail.com'),
(5050, 'Isabella', 'Thomas', 'Female', '1998-01-22', '+12025550132', 'isabella.thomas@gmail.com'),
(5051, 'Ethan', 'Jackson', 'Male', '1992-06-18', '+12025550133', 'ethan.jackson@gmail.com'),
(5052, 'Mia', 'White', 'Female', '1999-11-03', '+12025550134', 'mia.white@gmail.com'),
(5053, 'Alexander', 'Harris', 'Male', '1990-08-27', '+12025550135', 'alex.harris@gmail.com'),
(5054, 'Charlotte', 'Martin', 'Female', '1997-03-14', '+12025550136', 'charlotte.martin@gmail.com'),
(5055, 'Daniel', 'Clark', 'Male', '1994-10-30', '+12025550137', 'daniel.clark@gmail.com'),
(5056, 'Fatima', 'Ahmed', 'Female', '1995-05-05', '+971501234567', 'fatima.ahmed@emirates.com'),
(5057, 'Omar', 'Khan', 'Male', '1991-09-18', '+971501234568', 'omar.khan@gmail.com'),
(5058, 'Aisha', 'Ali', 'Female', '1998-12-22', '+971501234569', 'aisha.ali@hotmail.com'),
(5059, 'Mohammed', 'Hassan', 'Male', '1987-07-07', '+971501234570', 'mohammed.h@gmail.com'),
(5060, 'Layla', 'Youssef', 'Female', '2000-02-29', '+971501234571', 'layla.youssef@gmail.com'),
(5061, 'Wei', 'Chen', 'Male', '1990-11-11', '+8613812345678', 'wei.chen@china.com'),
(5062, 'Li', 'Zhang', 'Female', '1996-04-04', '+8613812345679', 'li.zhang@qq.com'),
(5063, 'Hiroshi', 'Tanaka', 'Male', '1988-08-08', '+818012345678', 'hiroshi.tanaka@jp.com'),
(5064, 'Aiko', 'Yamamoto', 'Female', '1999-03-03', '+818012345679', 'aiko.yamamoto@gmail.com'),
(5065, 'Rajesh', 'Kumar', 'Male', '1985-01-15', '+919876543250', 'rajesh.kumar@gmail.com'),
(5066, 'Priya', 'Singh', 'Female', '1992-06-20', '+919876543251', 'priya.singh@gmail.com'),
(5067, 'Anil', 'Verma', 'Male', '1988-09-12', '+919876543252', 'anil.verma@yahoo.com'),
(5068, 'Sunita', 'Devi', 'Female', '1990-12-05', '+919876543253', 'sunita.devi@gmail.com'),
(5069, 'Vivek', 'Yadav', 'Male', '1993-07-25', '+919876543254', 'vivek.yadav@gmail.com'),
(5070, 'Neha', 'Sharma', 'Female', '1997-10-10', '+919876543255', 'neha.sharma95@gmail.com'),
(5071, 'Suresh', 'Raina', 'Male', '1986-11-11', '+919876543256', 'suresh.raina@gmail.com'),
(5072, 'Poonam', 'Gupta', 'Female', '1994-02-28', '+919876543257', 'poonam.gupta@gmail.com'),
(5073, 'Amit', 'Patel', 'Male', '1991-05-19', '+919876543258', 'amit.patel91@gmail.com'),
(5074, 'Kavita', 'Mehta', 'Female', '1998-08-08', '+919876543259', 'kavita.mehta@gmail.com'),
(5075, 'Rakesh', 'Jain', 'Male', '1989-03-22', '+919876543260', 'rakesh.jain@gmail.com'),
(5076, 'Shalini', 'Agarwal', 'Female', '1996-07-07', '+919876543261', 'shalini.agarwal@gmail.com'),
(5077, 'Manoj', 'Singh', 'Male', '1992-12-12', '+919876543262', 'manoj.singh@gmail.com'),
(5078, 'Ritu', 'Verma', 'Female', '1999-04-04', '+919876543263', 'ritu.verma@gmail.com'),
(5079, 'Deepak', 'Sharma', 'Male', '1990-09-09', '+919876543264', 'deepak.sharma@gmail.com'),
(5080, 'Meera', 'Nair', 'Female', '1997-01-01', '+919876543265', 'meera.nair@gmail.com'),
(5081, 'Sanjay', 'Reddy', 'Male', '1988-06-15', '+919876543266', 'sanjay.reddy@gmail.com'),
(5082, 'Lakshmi', 'Iyer', 'Female', '1995-11-20', '+919876543267', 'lakshmi.iyer@gmail.com'),
(5083, 'Pradeep', 'Kumar', 'Male', '1993-08-25', '+919876543268', 'pradeep.kumar@gmail.com'),
(5084, 'Sarika', 'Joshi', 'Female', '1998-03-10', '+919876543269', 'sarika.joshi@gmail.com'),
(5085, 'Nikhil', 'Malhotra', 'Male', '1991-10-05', '+919876543270', 'nikhil.malhotra@gmail.com'),
(5086, 'Divya', 'Thakur', 'Female', '1996-05-18', '+919876543271', 'divya.thakur@gmail.com'),
(5087, 'Ravi', 'Chandra', 'Male', '1989-12-30', '+919876543272', 'ravi.chandra@gmail.com'),
(5088, 'Sneha', 'Menon', 'Female', '2000-07-22', '+919876543273', 'sneha.menon@gmail.com'),
(5089, 'Karan', 'Oberoi', 'Male', '1994-02-14', '+919876543274', 'karan.oberoi@gmail.com'),
(5090, 'Tanya', 'Khanna', 'Female', '1997-09-09', '+919876543275', 'tanya.khanna@gmail.com'),
(5091, 'Vijay', 'Rajput', 'Male', '1992-04-04', '+919876543276', 'vijay.rajput@gmail.com'),
(5092, 'Pooja', 'Bansal', 'Female', '1999-11-11', '+919876543277', 'pooja.bansal@gmail.com'),
(5093, 'Arnav', 'Sinha', 'Male', '1995-06-06', '+919876543278', 'arnav.sinha@gmail.com'),
(5094, 'Simran', 'Kaur', 'Female', '1998-01-28', '+919876543279', 'simran.kaur@gmail.com'),
(5095, 'Rohit', 'Mehra', 'Male', '1990-08-19', '+919876543280', 'rohit.mehra@gmail.com'),
(5096, 'Aditi', 'Rastogi', 'Female', '1996-03-15', '+919876543281', 'aditi.rastogi@gmail.com'),
(5097, 'Sameer', 'Khan', 'Male', '1993-10-22', '+919876543282', 'sameer.khan@gmail.com'),
(5098, 'Farah', 'Sheikh', 'Female', '1999-07-07', '+919876543283', 'farah.sheikh@gmail.com'),
(5099, 'Yash', 'Mittal', 'Male', '1991-12-01', '+919876543284', 'yash.mittal@gmail.com'),
(5100, 'Bhavya', 'Goyal', 'Female', '2001-05-25', '+919876543285', 'bhavya.goyal@gmail.com')

-- ========================================
-- Insert values in Bookings table
-- ========================================

INSERT INTO Bookings (booking_id, passenger_id, flight_id, booking_date, seat_number, class, status) VALUES
(6001, 5001, 4001, '2025-10-12 14:25:00', '1A', 'Business', 'Confirmed'),
(6002, 5002, 4001, '2025-10-13 09:10:00', '1C', 'Business', 'Confirmed'),
(6003, 5003, 4001, '2025-10-15 18:45:00', '12A', 'Economy', 'Confirmed'),
(6004, 5004, 4001, '2025-10-20 11:30:00', '12B', 'Economy', 'Checked-In'),
(6005, 5005, 4001, '2025-10-22 07:15:00', '15F', 'Economy', 'Confirmed'),
(6006, 5006, 4001, '2025-10-25 22:10:00', '8D', 'Economy', 'Confirmed'),
(6007, 5007, 4001, '2025-10-28 16:40:00', '22C', 'Economy', 'Confirmed'),
(6008, 5008, 4001, '2025-11-01 13:20:00', '25A', 'Economy', 'Cancelled'),
(6009, 5009, 4002, '2025-10-14 10:05:00', '3A', 'Business', 'Confirmed'),
(6010, 5010, 4002, '2025-10-18 19:55:00', '18E', 'Economy', 'Confirmed'),
(6011, 5011, 4002, '2025-10-21 12:30:00', '19C', 'Economy', 'Checked-In'),
(6012, 5012, 4002, '2025-10-26 08:45:00', '30F', 'Economy', 'Confirmed'),
(6013, 5013, 4003, '2025-10-10 15:20:00', '2B', 'Business', 'Confirmed'),
(6014, 5014, 4003, '2025-10-11 11:11:00', '10A', 'Economy', 'Confirmed'),
(6015, 5015, 4003, '2025-10-19 20:30:00', '14D', 'Economy', 'Confirmed'),
(6016, 5041, 4006, '2025-09-01 09:45:00', '1K', 'First', 'Confirmed'),
(6017, 5042, 4006, '2025-09-05 14:20:00', '2A', 'First', 'Confirmed'),
(6018, 5043, 4006, '2025-09-10 17:55:00', '5J', 'Business', 'Confirmed'),
(6019, 5044, 4006, '2025-09-15 10:10:00', '8C', 'Business', 'Checked-In'),
(6020, 5045, 4006, '2025-09-20 13:40:00', '12A', 'Business', 'Confirmed'),
(6021, 5016, 4004, '2025-10-08 16:25:00', '15B', 'Economy', 'Confirmed'),
(6022, 5017, 4005, '2025-10-12 09:30:00', '22F', 'Economy', 'Confirmed'),
(6023, 5018, 4007, '2025-10-18 11:15:00', '9C', 'Economy', 'Cancelled'),
(6024, 5019, 4008, '2025-09-25 20:40:00', '3A', 'Business', 'Confirmed'),
(6025, 5020, 4009, '2025-10-05 14:10:00', '1A', 'First', 'Confirmed'),
(6026, 5021, 4010, '2025-09-30 18:20:00', '4K', 'Business', 'Confirmed'),
(6027, 5022, 4011, '2025-09-12 10:05:00', '1A', 'First', 'Confirmed'),
(6028, 5023, 4012, '2025-10-01 12:35:00', '6J', 'Business', 'Confirmed'),
(6029, 5024, 4013, '2025-09-18 15:50:00', '2D', 'First', 'Checked-In'),
(6030, 5025, 4014, '2025-10-03 08:25:00', '10A', 'Business', 'Confirmed'),
(6031, 5026, 4001, '2025-11-02 10:15:00', '16C', 'Economy', 'Confirmed'),
(6032, 5027, 4001, '2025-11-05 14:40:00', '28F', 'Economy', 'Confirmed'),
(6033, 5028, 4002, '2025-11-08 09:20:00', '11D', 'Economy', 'Checked-In'),
(6034, 5029, 4003, '2025-11-10 17:55:00', '20A', 'Economy', 'Confirmed'),
(6035, 5030, 4004, '2025-11-12 13:10:00', '17E', 'Economy', 'Confirmed'),
(6100, 5066, 4015, '2025-11-15 19:30:00', '14B', 'Economy', 'Confirmed'),
(6101, 5067, 4016, '2025-11-16 08:45:00', '21F', 'Economy', 'Confirmed'),
(6102, 5068, 4017, '2025-11-17 12:20:00', '9A', 'Economy', 'Cancelled'),
(6103, 5069, 4018, '2025-11-18 16:55:00', '23C', 'Economy', 'Checked-In'),
(6104, 5070, 4019, '2025-11-19 10:10:00', '30D', 'Economy', 'Confirmed'),
(6150, 5046, 4020, '2025-10-20 14:30:00', '5A', 'Business', 'Confirmed'),
(6151, 5047, 4021, '2025-10-22 09:15:00', '2K', 'First', 'Confirmed'),
(6152, 5048, 4022, '2025-10-25 18:40:00', '8J', 'Business', 'Checked-In'),
(6153, 5049, 4023, '2025-10-28 11:25:00', '1A', 'First', 'Confirmed'),
(6154, 5050, 4024, '2025-10-30 15:50:00', '3D', 'Business', 'Confirmed'),
(6200, 5090, 4030, '2025-11-20 13:45:00', '19F', 'Economy', 'Confirmed'),
(6201, 5091, 4031, '2025-11-21 08:20:00', '25A', 'Economy', 'Confirmed'),
(6202, 5092, 4032, '2025-11-22 17:10:00', '12C', 'Economy', 'Checked-In'),
(6203, 5093, 4033, '2025-11-23 10:35:00', '28E', 'Economy', 'Confirmed'),
(6204, 5094, 4034, '2025-10-15 14:20:00', '4A', 'Business', 'Confirmed'),
(6205, 5095, 4035, '2025-11-24 09:55:00', '15D', 'Economy', 'Confirmed'),
(6246, 5096, 4001, '2025-11-25 12:40:00', '27B', 'Economy', 'Confirmed'),
(6247, 5097, 4005, '2025-11-25 16:15:00', '18A', 'Economy', 'Checked-In'),
(6248, 5098, 4010, '2025-11-01 11:30:00', '6C', 'Business', 'Confirmed'),
(6249, 5099, 4025, '2025-11-26 14:20:00', '22F', 'Economy', 'Confirmed'),
(6250, 5100, 4035, '2025-11-26 18:55:00', '30C', 'Economy', 'Confirmed');

-- ========================================
-- Insert values in Payments table
-- ========================================

INSERT INTO Payments (payment_id, booking_id, amount, payment_method, payment_date) VALUES
(7001, 6001, 22450.00, 'Card',        '2025-10-12 14:27:15'),  -- Business on 4001
(7002, 6002, 22450.00, 'UPI',        '2025-10-13 09:12:22'),
(7003, 6003, 4899.00,  'UPI',        '2025-10-15 18:47:10'),
(7004, 6004, 4899.00,  'Card',       '2025-10-20 11:32:45'),
(7005, 6005, 4899.00,  'UPI',        '2025-10-22 07:17:30'),
(7006, 6006, 4899.00,  'Card',       '2025-10-25 22:12:18'),
(7007, 6007, 4899.00,  'NetBanking', '2025-10-28 16:42:55'),
(7008, 6008, 4899.00,  'UPI',        '2025-11-01 13:22:40'),  -- Cancelled booking still paid
(7009, 6009, 25500.00, 'Card',       '2025-10-14 10:07:12'),  -- Business BOM→DEL
(7010, 6010, 5100.00,  'UPI',       '2025-10-18 19:57:33'),
(7011, 6011, 5100.00,  'Card',       '2025-10-21 12:32:20'),
(7012, 6012, 5100.00,  'UPI',       '2025-10-26 08:47:05'),
(7013, 6013, 27995.00, 'Card',       '2025-10-10 15:22:40'),  -- Business DEL→BLR
(7014, 6014, 5599.00,  'UPI',       '2025-10-11 11:13:15'),
(7015, 6015, 5599.00,  'Card',       '2025-10-19 20:32:50'),
(7016, 6016, 822000.00,'Card',       '2025-09-01 09:47:30'),  -- First Class DEL→LHR ×12
(7017, 6017, 822000.00,'NetBanking','2025-09-05 14:22:18'),
(7018, 6018, 308250.00,'Card',       '2025-09-10 17:57:45'),  -- Business ×4.5
(7019, 6019, 308250.00,'Card',       '2025-09-15 10:12:55'),
(7020, 6020, 308250.00,'UPI',        '2025-09-20 13:42:20'),
(7021, 6021, 7800.00,  'UPI',        '2025-10-08 16:27:10'),
(7022, 6022, 4200.00,  'Card',       '2025-10-12 09:32:35'),
(7023, 6023, 6200.00,  'UPI',        '2025-10-18 11:17:22'),
(7024, 6024, 265050.00,'Card',      '2025-09-25 20:42:48'),  -- Business on long-haul
(7025, 6025, 514560.00,'NetBanking','2025-10-05 14:12:30'), -- First on DXB→DEL
(7100, 6100, 7200.00,  'UPI',        '2025-11-15 19:32:18'),
(7101, 6101, 6900.00,  'Card',       '2025-11-16 08:47:40'),
(7102, 6102, 6300.00,  'UPI',        '2025-11-17 12:22:55'),
(7103, 6103, 8900.00,  'Card',       '2025-11-18 16:57:20'),
(7104, 6104, 3800.00,  'UPI',        '2025-11-19 10:12:35'),
(7150, 6150, 296100.00,'Card',       '2025-10-20 14:32:50'),  -- Business long-haul
(7151, 6151, 789888.00,'Card',       '2025-10-22 09:17:15'),  -- First Class
(7152, 6152, 219450.00,'UPI',        '2025-10-25 18:42:30'),
(7153, 6153, 628000.00,'NetBanking','2025-10-28 11:27:45'),
(7154, 6154, 320400.00,'Card',       '2025-10-30 15:52:20'),
(7200, 6200, 6700.00,  'UPI',        '2025-11-20 13:47:33'),
(7201, 6201, 8300.00,  'Card',       '2025-11-21 08:22:10'),
(7202, 6202, 5400.00,  'UPI',        '2025-11-22 17:12:45'),
(7203, 6203, 6100.00,  'Card',       '2025-11-23 10:37:20'),
(7204, 6204, 506250.00,'Card',       '2025-10-15 14:22:55'),  -- Business international
(7205, 6205, 5800.00,  'UPI',        '2025-11-24 09:57:40'),
(7246, 6246, 4899.00,  'Card',       '2025-11-25 12:42:30'),
(7247, 6247, 4200.00,  'UPI',        '2025-11-25 16:17:15'),
(7248, 6248, 230400.00,'Card',       '2025-11-01 11:32:50'),  -- Business
(7249, 6249, 8300.00,  'UPI',        '2025-11-26 14:22:40'),
(7250, 6250, 5800.00,  'Card',       '2025-11-26 18:57:55');

-- ========================================
-- Insert values in FlightStatus table
-- ========================================

INSERT INTO FlightStatus (status_id, flight_id, status, delay_minutes, updated_at) VALUES
(8001, 4001, 'On-Time',          0,   '2025-11-18 12:15:00'),  -- Already departed today
(8002, 4002, 'On-Time',          0,   '2025-11-18 11:30:00'),
(8003, 4003, 'Departed',         0,   '2025-11-18 07:45:00'),  -- Already flown this morning
(8004, 4004, 'Arrived',          0,   '2025-11-18 21:10:00'),  -- Landed 25 min ago
(8005, 4005, 'Delayed',         85,  '2025-11-18 14:20:00'),  -- Was 14:10 → now 15:35
(8006, 4006, 'Departed',         0,   '2025-11-17 00:30:00'),  -- Yesterday's red-eye to LHR
(8007, 4007, 'On-Time',          0,   '2025-11-18 05:55:00'),
(8008, 4008, 'Cancelled',     NULL,  '2025-11-17 19:30:00'),  -- Technical issue → cancelled
(8009, 4009, 'On-Time',          0,   '2025-11-18 10:45:00'),
(8010, 4010, 'Delayed',         120, '2025-11-18 13:10:00'),  -- Heavy fog in DXB
(8011, 4011, 'Scheduled',        0,   '2025-11-18 14:00:00'),  -- Future flight
(8012, 4012, 'Scheduled',        0,   '2025-11-18 14:00:00'),
(8013, 4013, 'Scheduled',        0,   '2025-11-18 14:00:00'),
(8014, 4014, 'Scheduled',        0,   '2025-11-18 14:00:00'),
(8015, 4015, 'On-Time',          5,   '2025-11-18 12:40:00'),
(8016, 4016, 'Boarding',         0,   '2025-11-18 14:35:00'),  -- Happening right now
(8017, 4017, 'Delayed',         45,  '2025-11-18 13:55:00'),
(8018, 4018, 'On-Time',          0,   '2025-11-18 11:20:00'),
(8019, 4019, 'Gate Closed',      0,   '2025-11-18 16:50:00'),
(8020, 4020, 'Scheduled',        0,   '2025-11-18 14:00:00'),
(8021, 4021, 'Scheduled',        0,   '2025-11-18 14:00:00'),
(8022, 4022, 'On-Time',         10,  '2025-11-18 09:30:00'),
(8023, 4023, 'Delayed',         75,  '2025-11-18 10:15:00'),
(8024, 4024, 'Scheduled',        0,   '2025-11-18 14:00:00'),
(8025, 4025, 'On-Time',          0,   '2025-11-18 06:20:00'),
(8026, 4026, 'Arrived',          0,   '2025-11-18 05:10:00'),  -- Early morning arrival
(8027, 4027, 'Scheduled',        0,   '2025-11-18 14:00:00'),
(8028, 4028, 'On-Time',          0,   '2025-11-18 00:30:00'),  -- Midnight flight
(8029, 4029, 'Delayed',         95,  '2025-11-18 09:40:00'),
(8030, 4030, 'On-Time',          0,   '2025-11-18 12:50:00'),
(8031, 4031, 'Scheduled',        0,   '2025-11-18 14:00:00'),
(8032, 4032, 'On-Time',          0,   '2025-11-18 07:40:00'),
(8033, 4033, 'Boarding',          0,   '2025-11-18 11:45:00'),
(8034, 4034, 'Delayed',        180,  '2025-11-18 08:20:00'),  -- Major delay → crew issue
(8035, 4035, 'On-Time',          0,   '2025-11-18 10:05:00');