CREATE TABLE contacts(
	contact_id INT NOT NULL,
	first_name VARCHAR(150) NOT NULL,
	last_name VARCHAR(150) NOT NULL,
	email VARCHAR(150) NOT NULL,
	PRIMARY KEY(contact_id)
);

-- Creating category table
CREATE TABLE category(
	category_id VARCHAR(150) NOT NULL,
	category VARCHAR(150) NOT NULL,
	PRIMARY KEY(category_id)
);

-- Creating subcategory table
CREATE TABLE subcategory(
	subcategory_id VARCHAR(150) NOT NULL,
	subcategory VARCHAR(150) NOT NULL,
	PRIMARY KEY(subcategory_id)
);

-- Creating campaign table
CREATE TABLE campaign(
	cf_id INT NOT NULL,
	contact_id INT NOT NULL,
	company_name VARCHAR(250) NOT NULL,
	description VARCHAR(250) NOT NULL,
	goal FLOAT NOT NULL,
	pledged FLOAT NOT NULL,
	outcome VARCHAR(250) NOT NULL,
	backers_count INT NOT NULL,
	country VARCHAR(250) NOT NULL,
	currency VARCHAR(250) NOT NULL,
	launched_date DATE NOT NULL,
	end_date DATE NOT NULL,
	category_id VARCHAR(250) NOT NULL,
	subcategory_id VARCHAR(250) NOT NULL,
		PRIMARY KEY(cf_id),
		FOREIGN KEY(contact_id) REFERENCES contacts(contact_id),
		FOREIGN KEY(category_id) REFERENCES category(category_id),
		FOREIGN KEY(subcategory_id) REFERENCES subcategory(subcategory_id)
);
SELECT * FROM category