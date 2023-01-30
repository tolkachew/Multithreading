insert into class(name) values('Warrior');
insert into class(name) values('Gunslinger');
insert into class(name) values('Archer');
insert into class(name) values('Assassin');
insert into class(name) values('Tank');

insert into character(race_id) values

UPDATE character SET race_id = 1 WHERE id>=2 and id<10;
UPDATE character SET race_id = 1 WHERE id%5=0;
UPDATE character SET race_id = 1 WHERE id>=2 and id<10;

UPDATE item SET price = random()%1000+1000;

Warrior
Gunslinger
Archer
Assassin
Tank

Dwarves
Elves
Humans
Goblins
Orcs
ALTER TABLE character add COLUMN race_id integer;

create table inventory (id integer not null primary key autoincrement,character_id integer, item_id integer);
//Цена, вес, уникальность, макс. в винвенторе
create table item (id integer not null primary key autoincrement, name text not null UNIQUE, price integer default 0,weight REAL, rarity integer CHECK (rarity between 1 and 5), maximum integer default 1);
insert into item(name) values ('');

  insert into item(name) values ('Adobe');
  insert into item(name) values ('Aluminum Ingot');
  insert into item(name) values ('Animal Bone');
  insert into item(name) values ('Animal Fat');
  insert into item(name) values ('Animal Hide');
  insert into item(name) values ('Bamboo Stick');
  insert into item(name) values ('Beeswax');
  insert into item(name) values ('Black Dye');
  insert into item(name) values ('Blue Alloy');
  insert into item(name) values ('Blue Coral Powder');
  insert into item(name) values ('Blue Dye');
  insert into item(name) values ('Blue Metal');
  insert into item(name) values ('Bolts');
  insert into item(name) values ('Brick');
  insert into item(name) values ('Bronze Ingot');
  insert into item(name) values ('Carved Wood');
  insert into item(name) values ('Cattail');
  insert into item(name) values ('Cement');
  insert into item(name) values ('Charcoal');
  insert into item(name) values ('Clay');
  insert into item(name) values ('Cloth');
  insert into item(name) values ('Coal');
  insert into item(name) values ('Copper Ingot');
  insert into item(name) values ('Copper Ore');
  insert into item(name) values ('Crafted Leather');
  insert into item(name) values ('Cursed Wood');
  insert into item(name) values ('Duct Tape');
  insert into item(name) values ('Electronic Components');
  insert into item(name) values ('Empty Can');
  insert into item(name) values ('Feather');
  insert into item(name) values ('Fertile Soil');
  insert into item(name) values ('Firewood');
  insert into item(name) values ('Flint');
  insert into item(name) values ('Gas');
  insert into item(name) values ('Glass');
  insert into item(name) values ('Glue');
  insert into item(name) values ('Gold Ingot');
  insert into item(name) values ('Gold Nugget');
  insert into item(name) values ('Gravel');
  insert into item(name) values ('Green Dye');
  insert into item(name) values ('Hard Skin');
  insert into item(name) values ('Hardwood');
  insert into item(name) values ('Iron Ingot');
  insert into item(name) values ('Iron Ore');
  insert into item(name) values ('Jade');
  insert into item(name) values ('Large Stone');
  insert into item(name) values ('Leather');
  insert into item(name) values ('Leather Straps');
  insert into item(name) values ('Marble');
  insert into item(name) values ('Metal Scraps');
  insert into item(name) values ('Metal Shard');
  insert into item(name) values ('Metal Wire');
  insert into item(name) values ('Monster Scales');
  insert into item(name) values ('Nails');
  insert into item(name) values ('Orange Dye');
  insert into item(name) values ('Paper');
  insert into item(name) values ('Plant Fiber');
  insert into item(name) values ('Plastic');
  insert into item(name) values ('Purple Coral Powder');
  insert into item(name) values ('Purple Dye');
  insert into item(name) values ('Quartz');
  insert into item(name) values ('Red Coral Powder');
  insert into item(name) values ('Red Dye');
  insert into item(name) values ('Rooftiles');
  insert into item(name) values ('Rope');
  insert into item(name) values ('Rubber');
  insert into item(name) values ('Sand');
  insert into item(name) values ('Sharp Stone');
  insert into item(name) values ('Silicon');
  insert into item(name) values ('Silver Ingot');
  insert into item(name) values ('Silver Ore');
  insert into item(name) values ('Slate');
  insert into item(name) values ('Small Stone');
  insert into item(name) values ('Steel Ingot');
  insert into item(name) values ('Steel Plates');
  insert into item(name) values ('Stick');
  insert into item(name) values ('Straws');
  insert into item(name) values ('Thread');
  insert into item(name) values ('Timber');
  insert into item(name) values ('Tin');
  insert into item(name) values ('Titanium Dust');
  insert into item(name) values ('Titanium Ingot');
  insert into item(name) values ('Turquoise');
  insert into item(name) values ('Varnish');
  insert into item(name) values ('Whetstone');
  insert into item(name) values ('White Coral Powder');
  insert into item(name) values ('White Dye');
  insert into item(name) values ('Wood Log');
  insert into item(name) values ('Wood Planks');
  insert into item(name) values ('Wool');
  insert into item(name) values ('Yellow Coral Powder');
        insert into item(name) values ('Yellow Dye');