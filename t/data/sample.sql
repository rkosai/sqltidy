    select * from (
         select

         distinct  name as "fish, basket", (select id from X where p=q and y in (select yval from dual) group by p having count(*) > 3 and count(*) < 5),
        max ( fred ) as yoyo,
        min (wilma),
        phone , serial_number, --look a comment
        hat

        from peers b, dogs c join whales c on b.q1 = c.q2 left join whatever on c.q3 = whatever.fisherman and c.q4 = 5 and c.q5 = 'asfd,asfd, "wtf", asdf' where

               foo = "bar   bar"

         and dollar

        = 'baz' and blah in ( select id from car where driver = 'paren_in_string \)' and make = 'Audi' ) and
        x is null
        group by fish
        having count(*) > 11
        order by fish, count(*)
    ) where rownum < 5
    /
