create database FMS;
use FMS;

create table Passenger(
	passenger_id varchar(15) not null,
    passenger_name varchar(15) not null,
    passenger_email varchar(30) not null,
    passenger_dob date not null,
    constraint u_id unique(passenger_id)
);
desc passenger;
drop table passenger;

insert into passenger(passenger_id, passenger_name, passenger_email, passenger_dob)
values("P0001", "Ram", "Ram@gmail.com", "1980-12-01"), ("P0002", "Rajan", "Rajan@gmail.com", "1939-11-11"),
("P0003", "Smita", "Smita@gmail.com", "1988-02-06"), ("P0004", "Bhavan", "Bhavan@gmail.com", "1973-09-18"),
("P0005", "Sheela", "Sheela@gmail.com", "1976-05-09"), ("P0006", "Nethra", "Nethra@gmail.com", "1955-10-08");

select*from passenger;

create table Flight(
	flight_id varchar(15) not null, 
    flight_source varchar(15) not null,
    flight_dest varchar(15) not null,
    flight_date varchar(15) not null,
    flight_seat varchar(15) not null,
    ticket_cost varchar(15) not null,
    constraint u_fl_id unique(flight_id)
);

insert into flight(flight_id, flight_source, flight_dest, flight_date, flight_seat, ticket_cost)
values("F0001", "Kolkata", "Hyderabad", "2012-12-01", "100", "2000"),
("F0002", "Chennai", "Hyderabad", "2012-12-02", "100", "3000"),
("F0003", "Pune", "Kolkata", "2012-12-02", "100", "2500"),
("F0004", "Bangalore", "Pune", "2012-11-18", "100", "2300"),
("F0005","Hyderabad", "Bangalore", "2012-04-09", "100", "2600"),
("F0006", "Pune", "Hyderabad", "2012-08-08", "100", "3500"), 
("F0007", "Pune", "Kolkata", "2012-12-04", "100", "2900"),
("F0008", "Kolkata", "Hyderabad", "2012-12-06", "100", "3500");

create table booking(
	booking_id varchar(15) not null,
    flight_id varchar(15) not null,
    book_date date not null,
    constraint u_bid unique(booking_id),
    constraint fk_fid foreign key(flight_id)
    references flight(flight_id)
);
drop table booking;
insert into booking(booking_id, flight_id, book_date)
values("B0001", "F0001", "2012-12-01"), ("B0002", "F0004", "2012-12-02"),
("B0003", "F0005","2012-12-03"), ("B0004", "F0003", "2012-12-04"),
("B0005", "F0001", "2012-12-02"),("B0006", "F0004", "2012-12-02"),
("B0007", "F0003", "2016-12-02");

create table Booking_details(
	Booking_id varchar(15),
    passenger_id varchar(15),
    constraint fk_bid foreign key(Booking_id) references booking(booking_id),
    constraint fk_Pid foreign key(passenger_id) references passenger(passenger_id)
);

insert into booking_details(booking_id, passenger_id)
values("B0001", "P0001"), ("B0001", "P0002"), ("B0001", "P0003"),
("B0002", "P0004"), ("B0002", "P0005"), ("B0003", "P0006"), ("B0003", "P0001"),
("B0004", "P0002"), ("B0005", "P0003");

#Query1
select*from passenger;
select passenger_name from passenger
where passenger_name like"_e%";

#query2
select passenger_name from passenger
order by passenger_dob desc
limit 1;

#Query3
show tables;
select count(*) from flight
where flight_source="Kolkata";

#Query4

select p.passenger_name from booking_details bd
join passenger p on p.passenger_id=bd.passenger_id
group by p.passenger_id
having count(booking_id) > 1;






