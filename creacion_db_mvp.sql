
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";






CREATE TABLE Brand (
    id UUID PRIMARY KEY,
    name VARCHAR NOT NULL UNIQUE,
    logo_url VARCHAR,
    website_url VARCHAR,
    description TEXT,
    created_at TIMESTAMP,
    updated_at TIMESTAMP
);

CREATE TABLE Category (
    id UUID PRIMARY KEY,
    name VARCHAR NOT NULL UNIQUE
);

CREATE TABLE BrandCategory (
    brand_id UUID NOT NULL,
    category_id UUID NOT NULL,
    PRIMARY KEY (brand_id, category_id),
    FOREIGN KEY (brand_id) REFERENCES Brand(id),
    FOREIGN KEY (category_id) REFERENCES Category(id)
);

CREATE TABLE ClickRedirect (
    id UUID PRIMARY KEY,
    brand_id UUID NOT NULL,
    clicked_at TIMESTAMP,
    source VARCHAR,
    FOREIGN KEY (brand_id) REFERENCES Brand(id)
);
