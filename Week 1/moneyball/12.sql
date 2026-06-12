SELECT "first_name","last_name" FROM "players" WHERE "id" IN (
    SELECT "id" FROM (
        SELECT "players"."id","salary"/"H" AS 'dollars_per_hit' FROM "players"
        JOIN "performances" ON "performances"."player_id" = "players"."id"
        JOIN "salaries" ON "salaries"."player_id" = "players"."id"
        WHERE "performances"."year" = "salaries"."year"
        AND "performances"."year" = 2001
        AND "H" != 0
        ORDER BY "dollars_per_hit"
        LIMIT 10
    )
    INTERSECT
    SELECT "id" FROM (
        SELECT "players"."id","salary"/"RBI" AS 'dollars_per_rbi' FROM "players"
        JOIN "performances" ON "performances"."player_id" = "players"."id"
        JOIN "salaries" ON "salaries"."player_id" = "players"."id"
        WHERE "performances"."year" = "salaries"."year"
        AND "performances"."year" = 2001
        AND "RBI" != 0
        ORDER BY "dollars_per_rbi"
        LIMIT 10
    )
)
ORDER BY "id";
