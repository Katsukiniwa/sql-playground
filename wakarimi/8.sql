select movies.*, characters.* from movies, characters;

select movies.*, characters.* from movies, characters where movies.movie_id = characters.movie_id;

select m.*, c.* from movies m, characters c where m.movie_id = c.movie_id and c.gender='F';

select * from movies m join characters c on m.movie_id = c.movie_id where c.gender = 'F';

select c.*, m.* from characters c join movies m on c.movie_id = m.movie_id order by c.id;

select c.*, m.* from characters c join movies m on c.movie_id = m.movie_id where m.title = 'となりのトトロ' order by c.id;

select c.* from characters c where c.movie_id in (select m.movie_id from movies m where m.title='となりのトトロ') order by c.id;
