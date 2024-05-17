
-- *** The Lost Letter ***
SELECT "type" FROM "addresses" WHERE "id"=(
    SELECT "address_id" FROM "scans" WHERE "id"=(
        SELECT "id" FROM "packages" WHERE "from_address_id"=(
            SELECT "id" FROM "addresses" WHERE ("address"='900 Somerville Avenue')
            )
            AND "contents" LIKE '%congratulatory%'
)
);
-- ======================================================================
SELECT "type" FROM "addresses" WHERE "id"=(
    SELECT "address_id" FROM "scans" WHERE "package_id"=(
        SELECT "id" FROM "packages" WHERE "from_address_id" IS NULL
)
);
-- *** The Devious Delivery ***
--=======================================================================
--1-
  SELECT "type" FROM "addresses" WHERE "id" IN(
      SELECT "address_id" FROM "scans" WHERE "package_id"IN(
         SELECT "id" FROM "packages" WHERE( "from_address_id" IS NULL
         AND "contents" = 'Duck debugger')
  )
   );

--=======================================================================
-- THE CONTENT
SELECT "contents" FROM "packages" WHERE "from_address_id" IS NULL;
-- *** The Forgotten Gift ***
SELECT "contents" FROM "packages" WHERE "id"=(
    SELECT "address_id" FROM "scans" WHERE "package_id"=(
        SELECT "id" FROM "packages" WHERE "from_address_id" IS NULL
)
);
-- ========================================
SELECT "name" FROM "drivers" WHERE "id" IN(
    SELECT "driver_id" FROM "scans" WHERE "package_id" IN(
        SELECT "id" FROM "packages" WHERE ("from_address_id" IN(
            SELECT "id" FROM "addresses" WHERE ("address"='109 Tileston Street')
            )
            AND "to_address_id" IN(
        SELECT "id" FROM "addresses" WHERE ("address"='728 Maple Place')
            ))
            )
);