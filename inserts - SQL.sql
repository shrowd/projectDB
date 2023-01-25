INSERT ALL
INTO hotel VALUES (1, 'Hilton', 'Wisławy Szymborskiej 2, 15-424 Białystok', 111111111, 'hilton@gmail.com')
INTO hotel VALUES (2, 'Mariott', 'al. Jerozolimskie 65/79, 00-697 Warszawa', 222222222, 'mariott@gmail.com')
INTO hotel VALUES (3, 'Ibis', 'Aleja Piłsudskiego 25, 15-444 Białystok', 333333333, 'ibis@gmail.com')
INTO hotel VALUES (4, 'Novotel', 'Marszałkowska 94/98, 00-510 Warszawa', 444444444, 'novotel@gmail.com')
INTO hotel VALUES (5, 'Sheraton', 'Bolesława Prusa 2, 00-493 Warszawa', 555555555, 'sheraton@gmail.com')
INTO hotel VALUES (6, 'Westin', 'al. Jana Pawła II 21, 00-854 Warszawa', 666666666, 'westin@gmail.com')
INTO hotel VALUES (7, 'Mercure', 'Hetmańska 46, 15-727 Białystok', 777777777, 'mercure@gmail.com')
SELECT * FROM DUAL

INSERT ALL
INTO rooms VALUES (1, 101, 'jednoosobowy', 50, 1, 'Tak', 1)
INTO rooms VALUES (2, 102, 'dwuosobowy', 70, 2, 'Tak', 2)
INTO rooms VALUES (3, 103, 'trzyosobowy', 90, 3, 'Tak', 3)
INTO rooms VALUES (4, 104, 'czteroosobowy', 110, 4, 'Tak', 4)
INTO rooms VALUES (5, 105, 'luksusowy', 150, 2, 'Tak', 5)
INTO rooms VALUES (6, 106, 'rodzinny', 120, 4, 'Tak', 6)
INTO rooms VALUES (7, 107, 'apartament', 200, 4, 'Tak', 7)
SELECT * FROM DUAL

INSERT ALL 
INTO guests VALUES (1, 'Jan', 'Kowalski', 'jkowalski@gmail.com', 111111111)
INTO guests VALUES (2, 'Anna', 'Nowak', 'anowak@gmail.com', 222222222)
INTO guests VALUES (3, 'Piotr', 'Wiśniewski', 'pwisniewski@gmail.com', 333333333)
INTO guests VALUES (4, 'Katarzyna', 'Wójcik', 'kwojcik@gmail.com', 444444444)
INTO guests VALUES (5, 'Tomasz', 'Kowalski', 'tkowalski@gmail.com', 555555555)
INTO guests VALUES (6, 'Maria', 'Kowalczyk', 'mkowalczyk@gmail.com', 66666666)
INTO guests VALUES (7, 'Krzysztof', 'Zieliński', 'kzielinski@gmail.com', 777777777)
SELECT * FROM DUAL

INSERT ALL
INTO employees VALUES (1, 'Jan', 'Nowak', 'Menadżer', 'jnowak@gmail.com', 111111111, 1)
INTO employees VALUES (2, 'Anna', 'Wiśniewska', 'Recepcjonistka', 'awisniewska@gmail.com', 222222222, 2)
INTO employees VALUES (3, 'Piotr', 'Kowalski', 'Ochroniarz', 'pkowalski@gmail.com', 333333333, 3)
INTO employees VALUES (4, 'Katarzyna', 'Wójcik', 'Sprzątaczka', 'kwojcik@gmail.com', 444444444, 4)
INTO employees VALUES (5, 'Tomasz', 'Zieliński', 'Kucharz', 'tzielinski@gmail.com', 555555555, 5)
INTO employees VALUES (6, 'Maria', 'Kowalczyk', 'Szef kuchni', 'mkowalczyk@gmail.com', 666666666, 6)
INTO employees VALUES (7, 'Krzysztof', 'Nowakowski', 'Księgowy', 'knowakowski@gmail.com', 777777777, 7)
SELECT * FROM DUAL

INSERT ALL
INTO reservations VALUES (1, 1, 1, to_date('2022-01-01','YYYY-MM-DD'), to_date('2022-01-03','YYYY-MM-DD'), 2)
INTO reservations VALUES (2, 2, 2, to_date('2022-02-05','YYYY-MM-DD'), to_date('2022-02-07','YYYY-MM-DD'), 4)
INTO reservations VALUES (3, 3, 3, to_date('2022-03-07','YYYY-MM-DD'), to_date('2022-03-10','YYYY-MM-DD'), 2)
INTO reservations VALUES (4, 4, 4, to_date('2022-04-11','YYYY-MM-DD'), to_date('2022-04-16','YYYY-MM-DD'), 3)
INTO reservations VALUES (5, 5, 5, to_date('2022-05-14','YYYY-MM-DD'), to_date('2022-05-17','YYYY-MM-DD'), 2)
INTO reservations VALUES (6, 6, 6, to_date('2022-06-18','YYYY-MM-DD'), to_date('2022-06-22','YYYY-MM-DD'), 4)
INTO reservations VALUES (7, 7, 7, to_date('2022-07-21','YYYY-MM-DD'), to_date('2022-07-22','YYYY-MM-DD'), 2)
SELECT * FROM DUAL

INSERT ALL
INTO payments VALUES (1, 1, to_date('2022-01-12', 'YYYY-MM-DD'), 'karta kredytowa', 200, 'opłacone')
INTO payments VALUES (2, 2, to_date('2022-02-27', 'YYYY-MM-DD'), 'gotówka', 150, 'opłacone')
INTO payments VALUES (3, 3, to_date('2022-03-06', 'YYYY-MM-DD'), 'przelew', 200, 'opłacone')
INTO payments VALUES (4, 4, to_date('2022-04-23', 'YYYY-MM-DD'), 'przelew', 110, 'opłacone')
INTO payments VALUES (5, 5, to_date('2022-05-15', 'YYYY-MM-DD'), 'gotówka', 170, 'opłacone')
INTO payments VALUES (6, 6, to_date('2022-06-12', 'YYYY-MM-DD'), 'karta kredytowa', 150, 'opłacone')
INTO payments VALUES (7, 7, to_date('2022-07-30', 'YYYY-MM-DD'), 'karta kredytowa', 120, 'opłacone')
SELECT * FROM DUAL

INSERT ALL
INTO services VALUES (1, 'Obsługa pokoju', 20, 'Tak', 1)
INTO services VALUES (2, 'Pralnia', 15, 'Tak', 2)
INTO services VALUES (3, 'Spa', 50, 'Tak', 3)
INTO services VALUES (4, 'Siłownia', 30, 'Tak', 4)
INTO services VALUES (5, 'Parking', 10, 'Tak', 5)
INTO services VALUES (6, 'Transport z lotniska', 25, 'Tak', 6)
INTO services VALUES (7, 'Basen', 15, 'Tak', 7)
SELECT * FROM DUAL

INSERT ALL
INTO reservations_services VALUES (1, 1, 1)
INTO reservations_services VALUES (2, 2, 2)
INTO reservations_services VALUES (3, 3, 3)
INTO reservations_services VALUES (4, 4, 4)
INTO reservations_services VALUES (5, 5, 5)
INTO reservations_services VALUES (6, 6, 6)
INTO reservations_services VALUES (7, 7, 7)
SELECT * FROM DUAL