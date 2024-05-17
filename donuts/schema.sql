CREATE TABLE "ingredients"(
    "id" PRIMARY KEY,
    "flour" REAL,
    "oil" REAL,
    "yeast" REAL,
    "butter" REAL,
    "suger" REAL
);
CREATE TABLE "donuts"(
    "name" TEXT,
    "price" REAL,
    "gluten-free" TEXT,
    "ingredient_id" INTEGER,
    FOREIGN KEY ("ingredient_id") REFERENCES "ingredients"("id")
);
CREATE TABLE "customers"(
    "first_name" TEXT,
    "last_name" TEXT,
    "id" PRIMARY KEY
);
CREATE TABLE "orders"(
    "id" PRIMARY KEY,
    "number_of_donuts" INTEGER,
    "customer_id",
    FOREIGN KEY ("customer_id") REFERENCES "customers"("id")
);
