   select c.cowbell_id as cowbell_id, c.name as cow_name, c.id as
   cow_id, co.count
      from farmers.cows c join
         (select c.id as cow_id, count(*) as count
            from farmers.cows c
               join tractors.farms td on td.cow_id = c.id
                  join tractors.tractors       tp on tp.id          =
                  d.tractor_id
                     where c.status = 'P'
                               and c.modified > systimestamp - interval '3' month
                                    and td.status = 'A'
                                         and tp.status = 'A'
                                            group by c.id) co on co.cow_id = c.id
                                               order by count desc;


