SELECT "first_name","last_name","debut" FROM "players"
WHERE "birth_city" LIKE 'pittsburgh' AND "birth_state" LIKE 'PA'
ORDER BY "debut" DESC,"first_name" ASC,"last_name" ASC;
