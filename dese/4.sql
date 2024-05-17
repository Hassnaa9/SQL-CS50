SELECT "city" ,COUNT("id") AS "Number of pub schools" FROM "schools"  WHERE "type"='Public School'
 GROUP BY "city" ORDER BY COUNT("id") DESC,"city" LIMIT 10;