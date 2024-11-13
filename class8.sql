-- Creating table `country`
CREATE TABLE country (
    country_id INT PRIMARY KEY,
    country_name VARCHAR(50)
);

-- Creating table `sports`
CREATE TABLE sports (
    sport_id INT PRIMARY KEY,
    sport_name VARCHAR(50),
    country_id INT,
    FOREIGN KEY (country_id) REFERENCES country(country_id)
);

-- Creating table `movie`
CREATE TABLE movie (
    movie_id INT PRIMARY KEY,
    movie_name VARCHAR(50),
    country_id INT,
    FOREIGN KEY (country_id) REFERENCES country(country_id)
);

INSERT INTO country (country_id, country_name) VALUES
(1, 'USA'),
(2, 'Canada'),
(3, 'Brazil'),
(4, 'Japan'),
(5, 'Germany');

INSERT INTO sports (sport_id, sport_name, country_id) VALUES
(1, 'Basketball', 1),
(2, 'Hockey', 2),
(3, 'Soccer', 3),
(4, 'Baseball', 4),
(5, 'Football', 1),
(6, 'Tennis', 5);

INSERT INTO movie (movie_id, movie_name, country_id) VALUES
(1, 'Inception', 1),
(2, 'Titanic', 2),
(3, 'City of God', 3),
(4, 'Spirited Away', 4),
(5, 'Good Bye Lenin', 5);


SELECT c.country_name, s.sport_name, m.movie_name
FROM country c
INNER JOIN sports s ON c.country_id = s.country_id
INNER JOIN movie m ON c.country_id = m.country_id;

SELECT c.country_name, s.sport_name
FROM country c
LEFT JOIN sports s ON c.country_id = s.country_id;

SELECT c.country_name, s.sport_name
FROM country c
RIGHT JOIN sports s ON c.country_id = s.country_id;

SELECT c1.country_name AS Country1, c2.country_name AS Country2
FROM country c1
JOIN country c2 ON c1.country_id < c2.country_id;
