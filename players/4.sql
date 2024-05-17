SELECT "first_name","last_name" FROM "players"
WHERE NOT("birth_country" LIKE 'US%')
ORDER BY ("first_name") , ("last_name");