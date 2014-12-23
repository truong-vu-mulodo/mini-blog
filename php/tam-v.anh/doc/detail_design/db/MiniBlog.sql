--
-- Table `user`
--

-- CREATE TABLE

CREATE TABLE user(
	id int(11) NOT NULL AUTO_INCREMENT,
	username VARCHAR(64) NOT NULL,
	password VARCHAR(64) NOT NULL,
	firstname VARCHAR(30) NOT NULL,
	lastname VARCHAR(30) NOT NULL,
	avatar VARCHAR(100),
	gender TINYINT NOT NULL DEFAULT 1,
	birthday DATE,
	date_join DATETIME NOT NULL,
	address VARCHAR(200),
	city VARCHAR(30),
	email VARCHAR(50) NOT NULL,
	mobile VARCHAR(20),

	PRIMARY KEY(id)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

--
-- Table `blog`
--

-- CREATE TABLE

CREATE TABLE blog(
	id int(11) NOT NULL AUTO_INCREMENT,
	title VARCHAR(100) NOT NULL,
	description TINYTEXT NOT NULL,
	content LONGTEXT NOT NULL,
	image VARCHAR(100),
	status TINYINT NOT NULL,
	date_created DATETIME NOT NULL,
	date_updated DATETIME NOT NULL,
	user_id int(11) NOT NULL,

	PRIMARY KEY(id),
	FOREIGN KEY(user_id) REFERENCES user(id)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

--
-- Table `comment`
--

-- CREATE TABLE

CREATE TABLE comment(
	id int(11) NOT NULL AUTO_INCREMENT,
	content VARCHAR(250) NOT NULL,
	date_updated DATETIME NOT NULL,
	date_created DATETIME NOT NULL,
	status TINYINT NOT NULL DEFAULT 1,
	user_id int(11) NOT NULL,
	blog_id int(11) NOT NULL,
	
	PRIMARY KEY(id),
	FOREIGN KEY(user_id) REFERENCES user(id),
	FOREIGN KEY(blog_id) REFERENCES blog(id)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;