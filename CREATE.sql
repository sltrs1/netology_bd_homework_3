CREATE TABLE genre (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE artist (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

CREATE TABLE album (
    id SERIAL PRIMARY KEY,
    title VARCHAR(200) NOT NULL,
    release_year INT
);

CREATE TABLE track (
    id SERIAL PRIMARY KEY,
    title VARCHAR(200) NOT NULL,
    duration INT NOT NULL,
    album_id INT NOT NULL REFERENCES album(id)
);

CREATE TABLE compilation (
    id SERIAL PRIMARY KEY,
    title VARCHAR(200) NOT NULL,
    release_year INT
);

CREATE TABLE artist_genre (
    artist_id INT NOT NULL,
    genre_id INT NOT NULL,
    PRIMARY KEY (artist_id, genre_id),
    FOREIGN KEY (artist_id) REFERENCES artist(id),
    FOREIGN KEY (genre_id) REFERENCES genre(id)
);

CREATE TABLE artist_album (
    artist_id INT NOT NULL,
    album_id INT NOT NULL,
    PRIMARY KEY (artist_id, album_id),
    FOREIGN KEY (artist_id) REFERENCES artist(id),
    FOREIGN KEY (album_id) REFERENCES album(id)
);

CREATE TABLE compilation_track (
    compilation_id INT NOT NULL,
    track_id INT NOT NULL,
    PRIMARY KEY (compilation_id, track_id),
    FOREIGN KEY (compilation_id) REFERENCES compilation(id),
    FOREIGN KEY (track_id) REFERENCES track(id)
);
