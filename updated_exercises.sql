use codeup_test_db;


 /*albums in the table*/
select name from albums;


/* albums by michael j */
select name
from albums
where artist = 'Michael Jackson';


update albums
set sales = sales *10;
select * from albums;

update albums
set release_date = release_date - 100
where release_date < 1980;

update albums
set artist = 'Peter Jackson'
where artist = 'Michael Jackson';
select * from albums;
