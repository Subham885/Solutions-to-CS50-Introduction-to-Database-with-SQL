SELECT "city",COUNT("name") AS 'Number of School' FROM "schools" WHERE "type" = 'Public School' GROUP BY "city"
HAVING "Number of School" <= 3
ORDER BY "Number of School" DESC,"city";
