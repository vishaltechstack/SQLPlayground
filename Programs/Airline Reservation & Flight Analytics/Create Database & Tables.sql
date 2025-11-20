Create DATABASE AirlineReservation_FlightAnalytics

CREATE TABLE Airports (
    airport_id INT PRIMARY KEY,
    airport_name VARCHAR(100),
    city VARCHAR(50),
    country VARCHAR(50),
    iata_code CHAR(3)
)

CREATE TABLE Airlines (
    airline_id INT PRIMARY KEY,
    airline_name VARCHAR(100),
    country VARCHAR(50)
)

CREATE TABLE Aircrafts (
    aircraft_id INT PRIMARY KEY,
    aircraft_model VARCHAR(100),
    seating_capacity INT
)

CREATE TABLE Flights (
    flight_id INT PRIMARY KEY,
    airline_id INT,
    aircraft_id INT,
    departure_airport_id INT,
    arrival_airport_id INT,
    departure_time DATETIME,
    arrival_time DATETIME,
    base_fare DECIMAL(10,2),

    FOREIGN KEY (airline_id) REFERENCES Airlines(airline_id),
    FOREIGN KEY (aircraft_id) REFERENCES Aircrafts(aircraft_id),
    FOREIGN KEY (departure_airport_id) REFERENCES Airports(airport_id),
    FOREIGN KEY (arrival_airport_id) REFERENCES Airports(airport_id)
)

CREATE TABLE Passengers (
    passenger_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    gender VARCHAR(10),
    date_of_birth DATE,
    phone VARCHAR(20),
    email VARCHAR(100)
)

CREATE TABLE Bookings (
    booking_id INT PRIMARY KEY,
    passenger_id INT,
    flight_id INT,
    booking_date DATETIME,
    seat_number VARCHAR(10),
    class VARCHAR(20),   -- Economy, Business, First
    status VARCHAR(20),  -- Confirmed, Cancelled, Checked-In

    FOREIGN KEY (passenger_id) REFERENCES Passengers(passenger_id),
    FOREIGN KEY (flight_id) REFERENCES Flights(flight_id)
)

CREATE TABLE Payments (
    payment_id INT PRIMARY KEY,
    booking_id INT,
    amount DECIMAL(10,2),
    payment_method VARCHAR(20),   -- Card, UPI, NetBanking
    payment_date DATETIME,

    FOREIGN KEY (booking_id) REFERENCES Bookings(booking_id)
)

CREATE TABLE FlightStatus (
    status_id INT PRIMARY KEY,
    flight_id INT,
    status VARCHAR(30),          -- On-Time, Delayed, Cancelled
    delay_minutes INT,
    updated_at DATETIME,

    FOREIGN KEY (flight_id) REFERENCES Flights(flight_id)
)

CREATE TABLE CrewMembers (
    crew_id INT PRIMARY KEY,
    crew_name VARCHAR(100),
    role VARCHAR(50)           -- Pilot, Co-Pilot, Cabin Crew
)

CREATE TABLE FlightCrew (
    flight_id INT,
    crew_id INT,
    assigned_role VARCHAR(50),

    PRIMARY KEY (flight_id, crew_id),
    FOREIGN KEY (flight_id) REFERENCES Flights(flight_id),
    FOREIGN KEY (crew_id) REFERENCES CrewMembers(crew_id)
)