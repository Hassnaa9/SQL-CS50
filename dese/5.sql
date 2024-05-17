SELECT "city" ,COUNT("id") AS "Number of pub schools" FROM "schools"
WHERE "type"='Public School' GROUP BY "city"
HAVING COUNT("id")<4
ORDER BY COUNT("id") DESC,"city";