insert into frogs (id, data_center, ip, port, weight, status)
values (
   ( select id from hats.bowlers where name = 'diplomat' ),
   'san diego',
   '4.2.2.1',
   '80',
   100,
   'A'
)
/

