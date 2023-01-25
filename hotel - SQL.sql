CREATE TABLE hotel (
    hotel_id NUMBER(6) PRIMARY KEY NOT NULL,
    name VARCHAR2(30) ,
    address VARCHAR2(60) ,
    phone NUMBER(9) UNIQUE,
    email VARCHAR2(30)	UNIQUE
);

CREATE TABLE rooms (
    room_id NUMBER(6) PRIMARY KEY NOT NULL,
    room_number NUMBER(6) ,
    room_type VARCHAR2(30) ,
    price NUMBER(10,2) ,
    beds NUMBER(6) ,
    availability CHAR(3) CHECK (availability = 'Tak' OR availability = 'Nie'),
    hotel_id NUMBER(6) NOT NULL,
    FOREIGN KEY (hotel_id) REFERENCES hotel(hotel_id)
);

CREATE TABLE guests (
    guest_id NUMBER(6) PRIMARY KEY NOT NULL, 
    first_name VARCHAR2(30),
    last_name VARCHAR2(30),
    email VARCHAR2(30) UNIQUE, 
    phone NUMBER(9) UNIQUE
);

CREATE TABLE employees (
    employee_id NUMBER(6) PRIMARY KEY NOT NULL,
    first_name VARCHAR2(30) ,
    last_name VARCHAR2(30) ,
    job_title VARCHAR2(30) ,
    email VARCHAR2(30) UNIQUE,
    phone NUMBER(9) UNIQUE,
    hotel_id NUMBER(6) NOT NULL,
    FOREIGN KEY (hotel_id) REFERENCES hotel(hotel_id)
);

CREATE TABLE reservations (
    reservation_id NUMBER(6) PRIMARY KEY NOT NULL,
    guest_id NUMBER(6) NOT NULL,
    room_id NUMBER(6) NOT NULL,
    check_in DATE ,
    check_out DATE ,
    guests NUMBER(6) ,
    FOREIGN KEY (guest_id) REFERENCES guests(guest_id),
    FOREIGN KEY (room_id) REFERENCES rooms(room_id),
	CHECK (check_out > check_in)
);

CREATE TABLE payments (
    payment_id NUMBER(6) PRIMARY KEY NOT NULL,
    reservation_id NUMBER(6) ,
    payment_date DATE ,
    method VARCHAR2(30),
    amount NUMBER(10,2) ,
    status VARCHAR2(30) DEFAULT 'nieopłacone',
    FOREIGN KEY (reservation_id) REFERENCES reservations(reservation_id),
	CHECK (SYSDATE > payment_date)
);

CREATE TABLE services (
    service_id NUMBER(6) PRIMARY KEY NOT NULL,
    name VARCHAR2(30) ,
    price NUMBER(10,2) ,
    availability CHAR(3) CHECK (availability = 'Tak' OR availability = 'Nie'),
    hotel_id NUMBER(6) NOT NULL,
    FOREIGN KEY (hotel_id) REFERENCES hotel(hotel_id)
);

CREATE TABLE reservations_services (
    reservations_services_id NUMBER(6) PRIMARY KEY NOT NULL,
    reservation_id NUMBER(6) NOT NULL,
    service_id NUMBER(6) NOT NULL,
    FOREIGN KEY (reservation_id) REFERENCES reservations(reservation_id),
    FOREIGN KEY (service_id) REFERENCES services(service_id)
);

