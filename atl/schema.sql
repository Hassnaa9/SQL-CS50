CREATE TABLE "airlines"(
    "airline_id" INTEGER,
    "name" TEXT,
    "section" TEXT
);
--====================================--
CREATE TABLE "flights"(
    "flight_id" INTEGER PRIMARY KEY,
    "airline_id" INTEGER,
    "from_code" TEXT,
    "to_code" TEXT,
    "departure_time" TEXT,
    "departure_date" TEXT,
    "arrival_time" TEXT,
    "arrival_date" TEXT,
    FOREIGN KEY ("airline_id") REFERENCES "airlines"("airline_id")
);
--=====================================--
CREATE TABLE "passengers"(
    "first_name" TEXT,
    "last_name" TEXT,
    "age" INTEGER,
    "flight_id" INTEGER,
    FOREIGN KEY ("flight_id") REFERENCES "flights"("flight_id")
);
--=====================================--
CREATE TABLE "check"(
    "time" TEXT,
    "date" TEXT,
    "flight_id" INTEGER,
    FOREIGN KEY ("flight_id") REFERENCES "flights"("flight_id")
);
