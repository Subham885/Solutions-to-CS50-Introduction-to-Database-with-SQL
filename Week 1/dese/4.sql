SELECT "city",COUNT("name") AS 'Number of School' FROM "schools" WHERE "type" = 'Public School' GROUP BY "city"
ORDER BY "Number of School" DESC,"city"
LIMIT 10;
