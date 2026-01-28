INSERT INTO genre (name)
VALUES
    ('Speed Metal'),
    ('Trash Metal'),
	('Heavy Metal'),
	('Power Metal'),
    ('Symphonic Metal'),
    ('Test genre');

INSERT INTO artist (name)
VALUES
    ('Metallica'), -- Trash Metal, Heavy Metal, Speed Metal
    ('Manowar'), -- Heavy Metal
	('Van Canto'), -- Power Metal, Symphonic Metal
    ('Rage'), -- Power Metal, Speed Metal
    ('Test band'); -- Test genre

INSERT INTO artist_genre (artist_id, genre_id)
VALUES
(
    (SELECT id FROM artist WHERE name = 'Test band'),
    (SELECT id FROM genre WHERE name = 'Test genre')
);

-- Metallica - Trash Metal, Heavy Metal, Speed Metal
INSERT INTO artist_genre (artist_id, genre_id)
VALUES
(
    (SELECT id FROM artist WHERE name = 'Metallica'),
    (SELECT id FROM genre WHERE name = 'Trash Metal')
),
(
    (SELECT id FROM artist WHERE name = 'Metallica'),
    (SELECT id FROM genre WHERE name = 'Heavy Metal')
),
(
    (SELECT id FROM artist WHERE name = 'Metallica'),
    (SELECT id FROM genre WHERE name = 'Speed Metal')
);

-- Manowar - Heavy Metal
INSERT INTO artist_genre (artist_id, genre_id)
VALUES
(
    (SELECT id FROM artist WHERE name = 'Manowar'),
    (SELECT id FROM genre WHERE name = 'Heavy Metal')
);

-- Van Canto - Power Metal, Symphonic Metal
INSERT INTO artist_genre (artist_id, genre_id)
VALUES
(
    (SELECT id FROM artist WHERE name = 'Van Canto'),
    (SELECT id FROM genre WHERE name = 'Power Metal')
),
(
    (SELECT id FROM artist WHERE name = 'Van Canto'),
    (SELECT id FROM genre WHERE name = 'Symphonic Metal')
);

-- Rage - Power Metal, Speed Metal
INSERT INTO artist_genre (artist_id, genre_id)
VALUES
(
    (SELECT id FROM artist WHERE name = 'Rage'),
    (SELECT id FROM genre WHERE name = 'Power Metal')
),
(
    (SELECT id FROM artist WHERE name = 'Rage'),
    (SELECT id FROM genre WHERE name = 'Speed Metal')
);

INSERT INTO album (title, release_year)
VALUES
    ('Master of Puppets', 1986), -- Metallica
    ('72 Seasons', 2023), -- Metallica
    
    ('Battle Hymns', 1982), -- Manowar
    ('Gods of War', 2007), -- Manowar
    
    ('Greatest Hits', 2019), -- Metallica & Manowar
    
    ('Tribe of Force', 2010), -- Van Canto
    ('To the Power of Eight', 2021), -- Van Canto
    
    ('Unity', 2002), -- Rage
	('Wings of Rage', 2020), -- Rage
    
    ('Test album', 2000); -- Test band

INSERT INTO artist_album (artist_id, album_id)
VALUES
(
    (SELECT id FROM artist WHERE name = 'Test band'),
    (SELECT id FROM album WHERE title = 'Test album')
);


-- Metallica
INSERT INTO artist_album (artist_id, album_id)
VALUES
(
    (SELECT id FROM artist WHERE name = 'Metallica'),
    (SELECT id FROM album WHERE title = 'Master of Puppets')
),
(
    (SELECT id FROM artist WHERE name = 'Metallica'),
    (SELECT id FROM album WHERE title = '72 Seasons')
);

-- Manowar
INSERT INTO artist_album (artist_id, album_id)
VALUES
(
    (SELECT id FROM artist WHERE name = 'Manowar'),
    (SELECT id FROM album WHERE title = 'Battle Hymns')
),
(
    (SELECT id FROM artist WHERE name = 'Manowar'),
    (SELECT id FROM album WHERE title = 'Gods of War')
);

-- Metallica & Manowar
INSERT INTO artist_album (artist_id, album_id)
VALUES
(
    (SELECT id FROM artist WHERE name = 'Metallica'),
    (SELECT id FROM album WHERE title = 'Greatest Hits')
),
(
    (SELECT id FROM artist WHERE name = 'Manowar'),
    (SELECT id FROM album WHERE title = 'Greatest Hits')
);

-- Van Canto
INSERT INTO artist_album (artist_id, album_id)
VALUES
(
    (SELECT id FROM artist WHERE name = 'Van Canto'),
    (SELECT id FROM album WHERE title = 'Tribe of Force')
),
(
    (SELECT id FROM artist WHERE name = 'Van Canto'),
    (SELECT id FROM album WHERE title = 'To the Power of Eight')
);

-- Rage
INSERT INTO artist_album (artist_id, album_id)
VALUES
(
    (SELECT id FROM artist WHERE name = 'Rage'),
    (SELECT id FROM album WHERE title = 'Unity')
),
(
    (SELECT id FROM artist WHERE name = 'Rage'),
    (SELECT id FROM album WHERE title = 'Wings of Rage')
);


-- Track duration is in seconds
INSERT INTO track (title, duration, album_id)
-- Metallica
VALUES 
(
    'Battery',
    313,
    (SELECT id FROM album WHERE title = 'Master of Puppets')
),
(
    'The Thing That Should Not Be',
    397,
    (SELECT id FROM album WHERE title = 'Master of Puppets')
),
(
    'Shadows Follow',
    459,
    (SELECT id FROM album WHERE title = '72 Seasons')
),
(
    'Sleepwalk My Life Away',
    416,
    (SELECT id FROM album WHERE title = '72 Seasons')
),
-- Manowar
(
    'Death Tone',
    288,
    (SELECT id FROM album WHERE title = 'Battle Hymns')
),
(
    'William''s Tale',
    112,
    (SELECT id FROM album WHERE title = 'Battle Hymns')
),
(
    'The Ascension',
    153,
    (SELECT id FROM album WHERE title = 'Gods of War')
),
(
    'King of Kings',
    260,
    (SELECT id FROM album WHERE title = 'Gods of War')
),
-- Metallica & Manowar
(
    'Fighting the World',
    226,
    (SELECT id FROM album WHERE title = 'Greatest Hits')
),
(
    'Enter Sandman',
    332,
    (SELECT id FROM album WHERE title = 'Greatest Hits')
),
-- Van Canto
(
    'My Voice',
    330,
    (SELECT id FROM album WHERE title = 'Tribe of Force')
),
(
    'Last Night of the Kings',
    232,
    (SELECT id FROM album WHERE title = 'Tribe of Force')
),
(
    'Dead by the Night',
    217,
    (SELECT id FROM album WHERE title = 'To the Power of Eight')
),
(
    'Falling Down',
    311,
    (SELECT id FROM album WHERE title = 'To the Power of Eight')
),
-- Rage
(
    'Down',
    324,
    (SELECT id FROM album WHERE title = 'Unity')
),
(
    'Set This World on Fire',
    305,
    (SELECT id FROM album WHERE title = 'Unity')
),
(
    'Chasing the Twilight Zone',
    270,
    (SELECT id FROM album WHERE title = 'Wings of Rage')
),
-------------------------------------------------------------
(
    'my own',
    300,
    (SELECT id FROM album WHERE title = 'Test album')
),
(
    'own my',
    300,
    (SELECT id FROM album WHERE title = 'Test album')
),
(
    'my',
    300,
    (SELECT id FROM album WHERE title = 'Test album')
),
(
    'oh my god',
    300,
    (SELECT id FROM album WHERE title = 'Test album')
),
(
    'myself',
    300,
    (SELECT id FROM album WHERE title = 'Test album')
),
(
    'by myself',
    300,
    (SELECT id FROM album WHERE title = 'Test album')
),
(
    'bemy self',
    300,
    (SELECT id FROM album WHERE title = 'Test album')
),
(
    'myself by',
    300,
    (SELECT id FROM album WHERE title = 'Test album')
),
(
    'by myself by',
    300,
    (SELECT id FROM album WHERE title = 'Test album')
),
(
    'beemy',
    300,
    (SELECT id FROM album WHERE title = 'Test album')
),
(
    'premyne',
    300,
    (SELECT id FROM album WHERE title = 'Test album')
),
(
    'Мой трек',
    300,
    (SELECT id FROM album WHERE title = 'Test album')
),
(
    'Мойдодыр',
    300,
    (SELECT id FROM album WHERE title = 'Test album')
),
(
    'Немой',
    300,
    (SELECT id FROM album WHERE title = 'Test album')
);

-------------------------------------------------------------

INSERT INTO compilation (title, release_year)
VALUES ('Metallica and Van Canto', 2015);

INSERT INTO compilation (title, release_year)
VALUES ('Manowar and Rage', 2019);

INSERT INTO compilation (title, release_year)
VALUES ('Van Canto and Rage', 2020);

INSERT INTO compilation (title, release_year)
VALUES ('Metallica and Rage', 2025);


INSERT INTO compilation_track (compilation_id, track_id)
VALUES
(
    (SELECT id FROM compilation WHERE title = 'Metallica and Van Canto'),
    (SELECT id FROM track WHERE title = 'Battery')
),
(
    (SELECT id FROM compilation WHERE title = 'Metallica and Van Canto'),
    (SELECT id FROM track WHERE title = 'My Voice')
),
(
    (SELECT id FROM compilation WHERE title = 'Manowar and Rage'),
    (SELECT id FROM track WHERE title = 'King of Kings')
),
(
    (SELECT id FROM compilation WHERE title = 'Manowar and Rage'),
    (SELECT id FROM track WHERE title = 'Set This World on Fire')
),
(
    (SELECT id FROM compilation WHERE title = 'Van Canto and Rage'),
    (SELECT id FROM track WHERE title = 'Set This World on Fire')
),
(
    (SELECT id FROM compilation WHERE title = 'Van Canto and Rage'),
    (SELECT id FROM track WHERE title = 'Dead by the Night')
),
(
    (SELECT id FROM compilation WHERE title = 'Metallica and Rage'),
    (SELECT id FROM track WHERE title = 'Shadows Follow')
),
(
    (SELECT id FROM compilation WHERE title = 'Metallica and Rage'),
    (SELECT id FROM track WHERE title = 'Chasing the Twilight Zone')
);