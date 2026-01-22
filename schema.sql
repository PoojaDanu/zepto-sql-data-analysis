DROP TABLE IF EXISTS zepto;

CREATE TABLE zepto (
    sku_id SERIAL PRIMARY KEY,
    category VARCHAR(120),
    name VARCHAR(150) NOT NULL,
    mrp NUMERIC(10,2),
    discount_percent NUMERIC(5,2),
    discounted_price NUMERIC(10,2),
    available_quantity INTEGER,
    weight_in_gms INTEGER,
    out_of_stock BOOLEAN,
    quantity INTEGER
);
