CREATE TABLE property_sales (
    transaction_id VARCHAR(100),
    price BIGINT,
    date_of_transfer DATE,
    postcode VARCHAR(20),
    property_type CHAR(1),
    old_new CHAR(1),
    duration CHAR(1),
    paon VARCHAR(255),
    saon VARCHAR(255),
    street VARCHAR(255),
    locality VARCHAR(255),
    town_city VARCHAR(100),
    district VARCHAR(100),
    county VARCHAR(100),
    ppd_category_type CHAR(1),
    record_status CHAR(1)
);
