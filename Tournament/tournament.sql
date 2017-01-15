DROP DATABASE IF EXISTS tournament;
/*Drops the database if it exists to avoid any problemts*/

CREATE DATABASE tournament;
/*Creates a database named tournament*/

\c tournament
/*Connects to the previously created database*/


CREATE TABLE players (
        player_id serial PRIMARY KEY,
        name varchar (30) NOT NULL);

/*Creates a table named players. This will contain 2 columns: A unique serial id for players,
                                                              Their name.
It will look something like this:

player_id |      name
    -------------------------------
        1 | Eddy Rogers      |
        2 | Jed Rogers       |
        3 | Seth Grinstead   |
        4 | Mitchell Joram   |
*/

CREATE TABLE matches (
        match_id serial PRIMARY KEY,
        winner integer REFERENCES players(player_id) NOT NULL,
        loser integer REFERENCES players(player_id) NOT NULL);

/*Creates a table named matches which contains 3 columns: A unique serial id for matches,
                                                          A winner for each match, containing the player_id of the winner,
                                                          A loser for each match, containing the player_id of the loser.
It will look something like this:

     match_id |  winner | loser
    -----------------------------
            1 |      1  |    2  |
            2 |      3  |    4  |
*/

CREATE VIEW standings AS

/*Creates a view names standings which contains 4 columns: The players' IDs, from table players,
                                                           The players' names, also from table players,
                                                           The players wins, from table matches,
                                                           The players total matches, also from table matches.
It will look something like this:

player_id |      name        |   total_wins    |   total_matches    |
    ------|------------------|-----------------|--------------------|
        1 | Eddy Rogers      |              1  |                 1  |
        2 | Jed Rogers       |              0  |                 0  |
        3 | Seth Grinstead   |              0  |                 0  |
        4 | Mitchell Joram   |              0  |                 0  |
