SELECT "name","per_pupil_expenditure" FROM "districts"
JOIN "expenditures" ON "expenditures"."district_id"="districts"."id"
WHERE "district_id" IN(
       SELECT "district_id" FROM "expenditures" GROUP BY "district_id"
 )
 AND
 "type"='Public School District' ORDER BY "per_pupil_expenditure" DESC LIMIT 10;
