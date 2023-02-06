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




       --Сколько у каждого персонажа вещей в инвентаре?
select c.name, count(i.id)
from character as c, item as i, inventory as inv
where (c.id=inv.character_id) and (i.id=inv.item_id)
group by
c.id
;

--У кого из эльфов имя начинается на "T"?
select name from character where name Like'T%'and race_id=2 ;

--У кого из воинов самое короткое имя?
--Вывести список всех людей-лучников
--Какой класс воинов самый распространенный у гномов?
--Вывести количество персонажей в каждой расе
--Сколько персонажей не принадлежат к известной расе?
--У кого из гномов есть серебро?
--Каждому гному раздать по серебряной руде (Silver ore)
--Вывести по 3 самых тяжелых вещи в инвентаре для каждого персонажа
--Удалить из инвентаря вещи, если их количество превышает 30 для одного персонажа

select count(*) from(
select
c.name
,
r.name
,
cl.name

from character as c, race as r, class as cl
where (c.race_id=
r.id
)and(c.class_id=
cl.id
)and(
r.name
 = "Humans") and (cl.name="Archer")
);
--Самое короткое имя у воина
select c.name
from character as c
inner join class as l
on (c.class_id=l.id)
where l.name='Warrior'
order by length(c.name)
limit 1;

select c.name, r.name, l.name, count(l.id) as count
from character as c
inner join race as r
on(c.race_id=r.id)
inner join class as l on(c.class_id=l.id)
where r.name='Dwarves'
group by l.name order by count desc
limit 1;

--У кого из гномов есть серебро
select c.name, r.name, i.name
from character as c, item as i, race as r, inventory as inv
where (c.id=inv.character_id) and (i.id=inv.item_id) and (
i.name like '%silver%') and (r.name= 'Dwarves');

--Вывести количество персонажей в каждой расе
select r.name, count(c.id) as count
from character as c
inner join race as r
on(c.race_id=r.id)
group by r.id;


--Сколько персонажей не принадлежат к известной расе?
select count from
(select r.name, count(c.id) as count
from character as c
left join race as r
on(c.race_id=r.id)
group by r.id) as t
where t.name is null;

--Вывести по 3 самых тяжелых вещи в инвентаре для каждого персонажа
drop table if exists weights;
create temp table weights as select c.id, c.name, i.name, i.weight
from character as c, item as i, inventory as inv
where (c.id=inv.character_id) and (i.id=inv.item_id)
order by c.name, i.weight desc;
select * from weights as w
where (select count(*) from weights where w.id=id and weight>=w.weight)<=3;


--Каждому гному раздать по серебряной руде (Silver ore)
select c.id  , (select id from item  where name='Silver Ore')
from character as c inner join race as r
on(c.race_id= r.id)
where r.name='Dwarves';

drop table if exists dwarves;
create temp table dwarves as
select  c.id   , (select id from item
where name='Silver Ore')
from character as c  inner join race as r on(c.race_id= r.id)
where r.name='Dwarves';



