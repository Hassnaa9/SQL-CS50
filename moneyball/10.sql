SELECT "first_name" , "last_name" , SUM("salary") AS "salary", "salaries"."year" , "HR" FROM "players"
JOIN "salaries" ON "salaries"."player_id" = "players"."id"
JOIN "performances" ON "performances"."player_id" = "players"."id"
GROUP BY  "salaries"."year"
ORDER BY "players"."id" , "salaries"."year";
