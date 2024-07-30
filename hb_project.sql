select * from song;
commit;
update song set Genre_ID=1 where Album_ID=1;
update song set Genre_ID=1 where Album_ID=10;
update song set Genre_ID=1 where Singer_ID=20;
update song set Genre_ID=1 where Song_ID=91;
//´í½º
update song set Genre_ID=4 where song_id=68;
update song set Genre_ID=4 where Singer_ID=11;
//·Ï¸ÞÅ»
update song set Genre_ID=5 where song_id=89;
//¾Ë¾Øºñ¼Ò¿ï
update song set Genre_ID=2 where song_id=90;
//¹ß¶óµå
update song set Genre_ID=3 where song_id=56;
update song set Genre_ID=3 where singer_id=15;
//pop
update song set Genre_ID=6 where song_id=81;
//·¦ÈüÇÕ
update song set Genre_ID=7 where song_id=14;
//j-pop

update song set Singer_ID=4 where Album_ID=9;
select * from singer;
select * from Genre;

select Cover_Photo from Album;

SELECT Album.cover_photo, Song.title
FROM Album
INNER JOIN Song ON Album.Album_ID = Song.Album_ID;

SELECT Song.Title, Album.Cover_Photo, Singer.Singer_Name
FROM Song
INNER JOIN Album ON Song.Album_ID = Album.Album_ID
INNER JOIN Singer ON Song.Singer_ID = Singer.Singer_ID;


select min(Album.Cover_Photo) as Cover_Photo, Album.Album_Title,
    min(Singer.Singer_Name) as Singer_Name from Album
    inner join Song on Album.Album_ID = Song.Album_ID
    inner join Singer on Song.Singer_ID = Singer.Singer_ID
    Group by Album.Album_ID, Album.Album_Title;

select url from song;


