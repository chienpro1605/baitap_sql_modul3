use quanlybanhang;
insert into customer(CID, CName, CAge)
values  (2, 'Minh Quan', 10),
        (3, 'Ngoc Anh', 20),
        (4, 'Hong Ha', 50);   
alter table orderr modify OtotalPrice int null;      
alter table orderr modify ODate datetime not null;      
insert into orderr(OID, ODate, OTotalPrice, CID)
values (10, '2006-3-21', null, 1),
	(20, '2006-3-23', null, 2),
	(30, '2006-3-16', null, 1);
insert into product(PId, PName, PPrice)
values(1, 'May Giat', 3),
       (2, 'Tu Lanh', 5),
       (3, 'Dieu Hoa', 7), 
       (4, 'Quat', 1),
       (5, 'Bep Dien', 2);
select od.OID, o.ODate, p.PPrice
from quanlybanhang.orderdetail od, quanlybanhang.orderr o, quanlybanhang.product p
where od.OID = o.OID and od.PID = p.PID;
select *
from customer, orderr, product, orderdetail
where customer.CID = orderr.CID and product.PID = orderdetail.PID and orderdetail.OID = orderr.OID;
select *
from customer
where customer.CID not in (select CID from orderr);
select orderr.OID, orderr.ODate, orderdetail.odQTY*product.PPrice  as total
from orderr, orderdetail, product, customer
where customer.CID = orderr.CID and product.PID = orderdetail.PID and orderdetail.OID = orderr.OID; 


