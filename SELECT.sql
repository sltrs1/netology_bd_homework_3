-- ЗАДАНИЕ 2

-- Название и продолжительность самого длительного трека.
SELECT title, duration 
FROM track
ORDER BY duration DESC
LIMIT 1;

-- Название треков, продолжительность которых не менее 3,5 минут.
-- (3,5 минут = 210 секунд)
SELECT title
FROM track
WHERE duration > 210;

-- Названия сборников, вышедших в период с 2018 по 2020 год включительно.
SELECT title
FROM compilation
WHERE release_year >= 2018 AND release_year <= 2020;

-- Исполнители, чьё имя состоит из одного слова
SELECT name
FROM artist
WHERE name NOT LIKE '% %';

-- Название треков, которые содержат слово "мой" или "my".
SELECT title
FROM track
WHERE UPPER(title) LIKE UPPER('%мой%') OR UPPER(title) LIKE UPPER('%my%');


-- ЗАДАНИЕ 3

-- Количество исполнителей в каждом жанре.
SELECT genre.name AS genre_name, COUNT(artist_genre.artist_id) AS artist_count
FROM genre JOIN artist_genre ON artist_genre.genre_id = genre.id
GROUP BY genre.name

-- Количество треков, вошедших в альбомы 2019–2020 годов.
SELECT COUNT(*) AS amount_of_tracks
FROM track JOIN album ON track.album_id = album.id
WHERE album.release_year >= 2019 AND album.release_year <= 2020

-- Средняя продолжительность треков по каждому альбому.
SELECT album.title AS album_title, ROUND(AVG(track.duration)) AS avg_duration
FROM track JOIN album ON track.album_id = album.id
GROUP BY album.title

-- Все исполнители, которые не выпустили альбомы в 2020 году.
SELECT artist.name
FROM artist
WHERE NOT EXISTS (
    SELECT *
    FROM artist_album 
    JOIN album ON album.id = artist_album.album_id
    WHERE artist_album.artist_id = artist.id
      AND album.release_year = 2020
);

-- Названия сборников, в которых присутствует конкретный исполнитель (выберите его сами).
SELECT DISTINCT c.title AS compilation_title
FROM compilation c
JOIN compilation_track ct ON ct.compilation_id = c.id
JOIN track t ON t.id = ct.track_id
JOIN album al ON al.id = t.album_id
JOIN artist_album aa ON aa.album_id = al.id
JOIN artist a ON a.id = aa.artist_id
WHERE a.name = 'Metallica';