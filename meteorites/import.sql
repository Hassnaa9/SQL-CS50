DROP TABLE IF EXISTS "meteorites";
DROP TABLE  IF EXISTS "sorted_mete";
DROP TABLE IF EXISTS "temp";

CREATE TABLE "temp"(
        "name" ,
        "id" ,
        "nametype",
        "class" ,
        "mass" ,
        "discovery" ,
        "year" ,
        "lat" ,
        "long"
    );
.mode csv
.import meteorites.csv temp

CREATE TABLE "sorted_mete"(
         "id"  ,
        "name" ,
        "class" ,
        "mass" ,
        "discovery" ,
        "year" ,
        "lat" ,
        "long" ,
        PRIMARY KEY("id")
 );

INSERT INTO "sorted_mete" ("id","name","class","mass","discovery","year","lat","long")
SELECT "id","name","class","mass","discovery","year","lat","long" FROM "temp";

UPDATE "sorted_mete" SET "mass" =NULL WHERE "mass"='';

UPDATE "sorted_mete" SET "lat" =NULL WHERE "lat"='';

UPDATE "sorted_mete" SET "long" =NULL WHERE "long"='';

UPDATE "sorted_mete" SET "year" =NULL WHERE "year"='';

UPDATE "sorted_mete" SET "mass"=ROUND("mass",2);

UPDATE "sorted_mete" SET "lat"=ROUND("lat",2);

UPDATE "sorted_mete" SET "long"=ROUND("long",2);

CREATE TABLE "meteorites"(
          "id" INTEGER UNIQUE,
          "name" TEXT,
          "class" TEXT,
          "mass" FLOAT,
          "discovery" TEXT,
          "year" INTEGER,
          "lat" FLOAT,
          "long" FLOAT,
          PRIMARY KEY("id")
 );
DELETE FROM "sorted_mete" WHERE "name" IN(
    SELECT "name" FROM "temp" WHERE "nametype"='Relict'
    );
INSERT INTO "meteorites" ("name","class","mass","discovery","year","lat","long")
SELECT "name","class","mass","discovery","year","lat","long" FROM "sorted_mete"
ORDER BY "year","name";
INSERT INTO "meteorites" ("name","class","mass","discovery","year","lat","long")
SELECT "name","class","mass","discovery","year","lat","long" FROM "sorted_mete";
