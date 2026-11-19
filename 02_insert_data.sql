-- ============================================================
-- European Travel Organization Database
-- File 2: Insert sample data (DML)  |  Run after 01_create_tables.sql
-- ============================================================

-- COUNTRIES
INSERT INTO countries VALUES (1, 'France', 'Euro', 'French');
INSERT INTO countries VALUES (2, 'Italy', 'Euro', 'Italian');
INSERT INTO countries VALUES (3, 'Switzerland', 'Swiss Franc', 'German');
INSERT INTO countries VALUES (4, 'Germany', 'Euro', 'German');
INSERT INTO countries VALUES (5, 'Spain', 'Euro', 'Spanish');

-- CUSTOMERS
INSERT INTO customers VALUES (101, 'Rahul Sharma', 'Male', '9876543210', 'rahul@gmail.com', 'Bangalore', 'P10001');
INSERT INTO customers VALUES (102, 'Sneha Reddy', 'Female', '9988776655', 'sneha@gmail.com', 'Hyderabad', 'P10002');
INSERT INTO customers VALUES (103, 'Arjun Mehta', 'Male', '9123456780', 'arjun@gmail.com', 'Mumbai', 'P10003');
INSERT INTO customers VALUES (104, 'Priya Nair', 'Female', '9012345678', 'priya@gmail.com', 'Chennai', 'P10004');
INSERT INTO customers VALUES (105, 'Kiran Kumar', 'Male', '9345678901', 'kiran@gmail.com', 'Mysore', 'P10005');

-- TOUR_PACKAGES
INSERT INTO tour_packages VALUES (201, 'Paris Delight', 1, 5, 120000, 'Luxury');
INSERT INTO tour_packages VALUES (202, 'Italy Explorer', 2, 7, 150000, 'Premium');
INSERT INTO tour_packages VALUES (203, 'Swiss Alps Adventure', 3, 6, 180000, 'Luxury');
INSERT INTO tour_packages VALUES (204, 'German City Tour', 4, 4, 90000, 'Standard');
INSERT INTO tour_packages VALUES (205, 'Spain Fiesta', 5, 5, 110000, 'Premium');

-- HOTELS
INSERT INTO hotels VALUES (301, 'Eiffel Stay', 1, 'Paris', 4.5);
INSERT INTO hotels VALUES (302, 'Rome Palace', 2, 'Rome', 4.2);
INSERT INTO hotels VALUES (303, 'Alps Residency', 3, 'Zurich', 4.8);
INSERT INTO hotels VALUES (304, 'Berlin Comfort', 4, 'Berlin', 4.0);
INSERT INTO hotels VALUES (305, 'Madrid Inn', 5, 'Madrid', 4.3);

-- FLIGHTS
INSERT INTO flights VALUES (401, 'Air France', 'Bangalore', 'Paris', TO_DATE('2026-06-10','YYYY-MM-DD'), 65000);
INSERT INTO flights VALUES (402, 'Lufthansa', 'Mumbai', 'Berlin', TO_DATE('2026-06-15','YYYY-MM-DD'), 55000);
INSERT INTO flights VALUES (403, 'Swiss Air', 'Delhi', 'Zurich', TO_DATE('2026-06-20','YYYY-MM-DD'), 70000);
INSERT INTO flights VALUES (404, 'Emirates', 'Chennai', 'Rome', TO_DATE('2026-06-25','YYYY-MM-DD'), 60000);
INSERT INTO flights VALUES (405, 'Qatar Airways', 'Hyderabad', 'Madrid', TO_DATE('2026-06-30','YYYY-MM-DD'), 58000);

-- TOUR_GUIDES
INSERT INTO tour_guides VALUES (501, 'John Mathew', 8, 'English,French', '9000011111');
INSERT INTO tour_guides VALUES (502, 'Marco Rossi', 6, 'English,Italian', '9000022222');
INSERT INTO tour_guides VALUES (503, 'David Muller', 10, 'English,German', '9000033333');
INSERT INTO tour_guides VALUES (504, 'Carlos Diaz', 5, 'English,Spanish', '9000044444');
INSERT INTO tour_guides VALUES (505, 'Sophia Lee', 7, 'English,French,German', '9000055555');

-- BOOKINGS
INSERT INTO bookings VALUES (601, 101, 201, TO_DATE('2026-05-01','YYYY-MM-DD'), 2, 'Confirmed');
INSERT INTO bookings VALUES (602, 102, 202, TO_DATE('2026-05-03','YYYY-MM-DD'), 4, 'Confirmed');
INSERT INTO bookings VALUES (603, 103, 203, TO_DATE('2026-05-05','YYYY-MM-DD'), 3, 'Pending');
INSERT INTO bookings VALUES (604, 104, 204, TO_DATE('2026-05-06','YYYY-MM-DD'), 1, 'Cancelled');
INSERT INTO bookings VALUES (605, 105, 205, TO_DATE('2026-05-07','YYYY-MM-DD'), 5, 'Confirmed');
INSERT INTO bookings VALUES (606, 101, 203, TO_DATE('2026-05-10','YYYY-MM-DD'), 2, 'Confirmed');

-- PAYMENTS
INSERT INTO payments VALUES (701, 601, TO_DATE('2026-05-02','YYYY-MM-DD'), 240000, 'Credit Card', 'Successful');
INSERT INTO payments VALUES (702, 602, TO_DATE('2026-05-04','YYYY-MM-DD'), 600000, 'UPI', 'Successful');
INSERT INTO payments VALUES (703, 603, TO_DATE('2026-05-06','YYYY-MM-DD'), 180000, 'Net Banking', 'Pending');
INSERT INTO payments VALUES (704, 604, TO_DATE('2026-05-07','YYYY-MM-DD'), 90000, 'Debit Card', 'Failed');
INSERT INTO payments VALUES (705, 605, TO_DATE('2026-05-08','YYYY-MM-DD'), 550000, 'Credit Card', 'Successful');
INSERT INTO payments VALUES (706, 606, TO_DATE('2026-05-11','YYYY-MM-DD'), 360000, 'UPI', 'Successful');

-- PACKAGE_HOTELS
INSERT INTO package_hotels VALUES (201, 301);
INSERT INTO package_hotels VALUES (202, 302);
INSERT INTO package_hotels VALUES (203, 303);
INSERT INTO package_hotels VALUES (204, 304);
INSERT INTO package_hotels VALUES (205, 305);
INSERT INTO package_hotels VALUES (203, 301);

-- PACKAGE_GUIDES
INSERT INTO package_guides VALUES (201, 501);
INSERT INTO package_guides VALUES (202, 502);
INSERT INTO package_guides VALUES (203, 503);
INSERT INTO package_guides VALUES (204, 504);
INSERT INTO package_guides VALUES (205, 505);
INSERT INTO package_guides VALUES (203, 505);

COMMIT;
