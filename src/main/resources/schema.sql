DROP TABLE IF EXISTS tbl_categories;

CREATE TABLE tbl_regions (
    id BIGINT AUTO_INCREMENT  PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

CREATE TABLE tbl_customers (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    number_id VARCHAR(20) UNIQUE NOT NULL,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    email VARCHAR(150) UNIQUE NOT NULL,
    photo_url VARCHAR(255),
    region_id INT,
    state VARCHAR(20) CHECK (state IN ('CREATED', 'IN_PROGRESS', 'COMPLETED')),
    FOREIGN KEY (region_id) REFERENCES tbl_regions(id) ON DELETE SET NULL
);