CREATE DATABASE website;

USE website;

CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL
);

CREATE TABLE data (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    artist VARCHAR(255) NOT NULL,
    album VARCHAR(255),
    genre VARCHAR(100),
    year INT,
    average_rating DECIMAL(3, 2) DEFAULT 0.00,
    description TEXT,
    created_by INT,
    FOREIGN KEY (created_by) REFERENCES users(id)
);

-- Dummy data for the 'data' table
INSERT INTO data (title, artist, album, genre, year, average_rating, description, created_by)
VALUES
('Shape of You', 'Ed Sheeran', 'Divide', 'Pop', 2017, 4.5, 'A catchy and popular song by Ed Sheeran.', 1),
('Blinding Lights', 'The Weeknd', 'After Hours', 'Pop', 2020, 4.8, 'A chart-topping hit with an 80s vibe.', 1),
('Rolling in the Deep', 'Adele', '21', 'Soul', 2011, 4.7, 'A powerful and emotional ballad.', 1),
('Bohemian Rhapsody', 'Queen', 'A Night at the Opera', 'Rock', 1975, 5.0, 'A classic rock masterpiece by Queen.', 1),
('Uptown Funk', 'Mark Ronson ft. Bruno Mars', 'Uptown Special', 'Funk', 2014, 4.6, 'An energetic and funky track.', 1),
('Levitating', 'Dua Lipa', 'Future Nostalgia', 'Pop', 2020, 4.4, 'A dance-pop hit that brings a retro vibe.', 1),
('Smells Like Teen Spirit', 'Nirvana', 'Nevermind', 'Grunge', 1991, 4.9, 'The anthem of a generation.', 1),
('Someone Like You', 'Adele', '21', 'Pop', 2011, 4.6, 'A heartfelt ballad about lost love.', 1),
('Hotel California', 'Eagles', 'Hotel California', 'Rock', 1976, 4.8, 'A timeless classic with deep lyrics.', 1),
('Bad Guy', 'Billie Eilish', 'When We All Fall Asleep, Where Do We Go?', 'Pop', 2019, 4.3, 'A dark pop track with a unique vibe.', 1);

-- Dummy data for Telugu songs
INSERT INTO data (title, artist, album, genre, year, average_rating, description, created_by)
VALUES
('Samajavaragamana', 'Sid Sriram', 'Ala Vaikunthapurramuloo', 'Melody', 2019, 4.8, 'A soulful melody composed by Thaman S.', 2),
('Butta Bomma', 'Armaan Malik', 'Ala Vaikunthapurramuloo', 'Pop', 2020, 4.7, 'A peppy romantic track loved by all.', 2),
('Inkem Inkem', 'Sid Sriram', 'Geetha Govindam', 'Romantic', 2018, 4.9, 'A beautiful romantic song that became a sensation.', 2),
('Vachinde', 'Madhu Priya', 'Fidaa', 'Folk', 2017, 4.6, 'A catchy folk-style song that had everyone dancing.', 2),
('Dosti', 'Anirudh Ravichander', 'RRR', 'Motivational', 2021, 4.8, 'An anthem of friendship from the blockbuster RRR.', 2),
('Nee Kannu Neeli Samudram', 'Javed Ali', 'Uppena', 'Romantic', 2020, 4.7, 'A soulful and romantic track.', 2),
('Kodakaa Koteswar Rao', 'Rahul Sipligunj', 'Arjun Reddy', 'Folk', 2017, 4.5, 'A quirky and fun folk song.', 2),
('Ramuloo Ramulaa', 'Anurag Kulkarni, Mangli', 'Ala Vaikunthapurramuloo', 'Folk', 2020, 4.8, 'A groovy folk number that became an instant hit.', 2),
('Bullettu Bandi', 'Mohana Bhogaraju, Rahul Sipligunj', 'Jathi Ratnalu', 'Folk', 2021, 4.6, 'A humorous and catchy folk song.', 2),
('Sid Sriram', 'Choosi Chudangane', 'Chowraasta', 'Melody', 2020, 4.5, 'A soothing melody with heart-touching lyrics.', 2);



select * from users;
select * from data;
