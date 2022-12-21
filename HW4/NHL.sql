DROP DATABASE IF EXISTS NHL;
CREATE DATABASE NHL;
USE NHL;

CREATE TABLE team (
	name VARCHAR(50) not null,
    city VARCHAR(50) not null,
    coach VARCHAR(50) not null,
    captain VARCHAR(500) not null,
    primary key (name)
);

CREATE TABLE player (
	name VARCHAR(50) not null,
    team_name VARCHAR(50) not null,
    skill VARCHAR(50) not null,
    position VARCHAR(50) not null,
    primary key (name),
    foreign key (team_name) references team(name)
);

CREATE TABLE injury_report (
	name VARCHAR(50) not null,
    description VARCHAR(200) not null,
    foreign key (name) references player (name)
);

CREATE TABLE games (
	host VARCHAR(50) not null,
    guest VARCHAR(50) not null,
    score VARCHAR(50) not null,
    date VARCHAR(10) not null,
    foreign key (host) references team (name),
    foreign key (guest) references team (name)
);