SELECT "name","pupils" FROM "districts"
JOIN "expenditures" ON "expenditures"."district_id"="districts"."id"
WHERE "district_id" IN(
       SELECT "district_id" FROM "expenditures" GROUP BY "district_id"
 );
