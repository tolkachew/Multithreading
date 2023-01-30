CREATE TABLE sqlite_sequence(name,seq);
CREATE TABLE character (id integer not null primary key autoincrement, name text not null UNIQUE, race_id integer, class_id integer);
CREATE TABLE race (id integer not null primary key autoincrement, name text not null unique);
CREATE TABLE class (id integer not null primary key autoincrement, name text not null UNIQUE);
CREATE TABLE item (id integer not null primary key autoincrement, name text not null UNIQUE, price integer default 0, weight REAL, rarity integer CHECK(rarity between 1 and 5) default 1, maximum integer default 1);
CREATE TABLE inventory (id integer not null primary key autoincrement,character_id integer, item_id integer);