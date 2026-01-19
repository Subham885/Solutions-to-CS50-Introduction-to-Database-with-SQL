
-- *** The Lost Letter ***
--Find address id of pick up and drop off address
SELECT "id" FROM "addresses" WHERE "address" = '900 Somerville Avenue';
SELECT "id" FROM "addresses" WHERE "address" LIKE '2%Finn_gan%Street%';
--Find package id of the concerned package
SELECT "id" FROM "packages" WHERE "from_address_id" = 432 AND "to_address_id" = 854;
--Find address id of the location where package was dropped off
SELECT "address_id" FROM "scans" WHERE "package_id" = 384 AND "action" = 'Drop';
--Find address from address id of last package drop off location
SELECT "address","type" FROM "addresses" WHERE "id" = 854;
-- *** The Devious Delivery ***
--Find package id,contents from packages table where from_address_id is null
SELECT "id","contents" FROM "packages" WHERE "from_address_id" IS NULL;
--Find address id of the drop off location of the package
SELECT "address_id" FROM "scans" WHERE "package_id" = 5098 AND "action" = 'Drop';
--Find type of address using address id found
SELECT "type" FROM "addresses" WHERE "id" = 348;
-- *** The Forgotten Gift ***
--Find address id of sender and receiver address
SELECT "id" FROM "addresses" WHERE "address" = '728 Maple Place';
SELECT "id" FROM "addresses" WHERE "address" = '109 Tileston Street';
--Find package id and contents from address
SELECT "id","contents" FROM "packages" WHERE "from_address_id" =9873 AND "to_address_id" = 4983;
--Find driver id using package id from the scans table
SELECT "driver_id","action","timestamp" FROM "scans" WHERE "package_id" = 9523;
--Find name of the driver from the drivers table
SELECT "name" FROM "drivers" WHERE "id" = 17;
