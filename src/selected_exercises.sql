use codeup_test_db;

select

select name
from albums
where artist = 'Pink Floyd';


select 'the year Sgt.Pepper''s Lonely Hearts Club Band was released'
select release_date
from albums
where name = 'Sgt.Pepper''s Lonely Hearts Club Band';


select 'the genre nevermind'
select genre
from albums
where name = 'Nevermind';


select name
from albums
where released_date between 1990 and 1999;

select name
from albums
where salse < 20;


select genre
from albums
where name = 'Rock';