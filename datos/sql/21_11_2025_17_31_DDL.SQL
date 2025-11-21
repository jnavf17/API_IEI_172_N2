CREATE TABLE IF NOT EXISTS geos(
    id INTEGER AUTO_INCREMENT,
    lat DECIMAL NOT NULL,
    lng DECIMAL NOT NULL,

    CONSTRAINT pk_geos PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS addresses(
    id INTEGER AUTO_INCREMENT,
    street VARCHAR(50) NOT NULL,
    suite VARCHAR(25) NOT NULL,
    city VARCHAR(50) NOT NULL,
    zipcode VARCHAR(25) NOT NULL,
    geoid INTEGER NOT NULL,

    CONSTRAINT pk_users PRIMARY KEY (id),
    CONSTRAINT fk_addresses_geos FOREIGN KEY (geoid) REFERENCES geos(id)
);

CREATE TABLE IF NOT EXISTS companies(
    id INTEGER AUTO_INCREMENT,
    name VARCHAR(25) NOT NULL,
    cathPhrase VARCHAR(100) NOT NULL,
    bs VARCHAR(50) NOT NULL,

    CONSTRAINT pk_companies PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS users(
    id INTEGER AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    username VARCHAR(50) NOT NULL,
    email VARCHAR(255) NOT NULL,
    phone VARCHAR(25) NOT NULL,
    website VARCHAR(255) NOT NULL,
    addressid INTEGER NOT NULL,
    companyid INTEGER NOT NULL,

    CONSTRAINT pk_users PRIMARY KEY (id),
    CONSTRAINT fk_users_addresses FOREIGN KEY (addressid) REFERENCES addresses(id),
    CONSTRAINT fk_users_companies FOREIGN KEY (companyid) REFERENCES companies(id)
);