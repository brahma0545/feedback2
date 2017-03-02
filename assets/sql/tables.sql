CREATE TABLE courses (
  code VARCHAR(20) PRIMARY KEY ,
  name VARCHAR(50)
);
CREATE UNIQUE INDEX courses_uindex ON courses(code);


CREATE TABLE branch(
  code VARCHAR(10) PRIMARY KEY,
  name VARCHAR(100)
);

CREATE TABLE comm_languages(
  code VARCHAR(10) PRIMARY KEY ,
  name VARCHAR(20)
);
CREATE UNIQUE INDEX comm_languages_uindex ON comm_languages(code);


CREATE TABLE prog_languages(
  code VARCHAR(10) PRIMARY KEY ,
  name VARCHAR(20)
);
CREATE UNIQUE INDEX prog_languages_uindex ON prog_languages(code);

CREATE TABLE organization(
  id INT PRIMARY KEY AUTO_INCREMENT,
  org_type VARCHAR(20)
);

CREATE TABLE profile(
  code VARCHAR(5) PRIMARY KEY,
  name VARCHAR(30)
);

CREATE TABLE mentors(
  id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(50),
  email VARCHAR(50),
  password VARCHAR(10)
);
CREATE UNIQUE INDEX mentors_uindex ON mentors(email);

CREATE TABLE faqs(
  qid INT PRIMARY KEY AUTO_INCREMENT,
  question VARCHAR(200)
);


CREATE TABLE users (
  user_id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(50) NOT NULL ,
  email VARCHAR(45) UNIQUE NOT NULL ,
  phone VARCHAR(45) UNIQUE NOT NULL ,
  dob DATE DEFAULT NULL ,
  gender VARCHAR(1) DEFAULT NULL ,
  current_state VARCHAR(50) DEFAULT NULL ,
  address VARCHAR(200) DEFAULT NULL ,
  photo LONGBLOB DEFAULT NULL ,
  plus_two_cgpa DOUBLE NOT NULL ,
  bbranch VARCHAR(5) DEFAULT NULL ,
  byear INT DEFAULT NULL ,
  bcgpa DOUBLE DEFAULT NULL ,
  bcollege VARCHAR(100) DEFAULT NULL ,
  buniv VARCHAR(100) DEFAULT NULL ,
  mbranch VARCHAR(5) DEFAULT NULL ,
  myear INT DEFAULT NULL ,
  mcgpa DOUBLE DEFAULT NULL ,
  mcollege VARCHAR(100) DEFAULT NULL ,
  muniv VARCHAR(100) DEFAULT NULL ,
  certificates_earned VARCHAR(200) DEFAULT NULL ,
  current_profile VARCHAR(5),
  org_type INT,
  experience INT,
  linkedin VARCHAR(100) DEFAULT NULL ,
  resume LONGBLOB DEFAULT NULL ,
  suggestions VARCHAR(200) DEFAULT NULL ,
  comments VARCHAR(500) DEFAULT NULL,
  prefered_time INT,
  FOREIGN KEY (bbranch) REFERENCES branch(code) ON UPDATE CASCADE ON DELETE RESTRICT,
  FOREIGN KEY (mbranch) REFERENCES branch(code) ON UPDATE CASCADE ON DELETE RESTRICT,
  FOREIGN KEY (current_profile) REFERENCES profile(code) ON UPDATE CASCADE ON DELETE RESTRICT,
  FOREIGN KEY (org_type) REFERENCES organization(id) ON UPDATE CASCADE ON DELETE RESTRICT
) ENGINE = INNODB;

CREATE TABLE registered_courses(
  user_id INT,
  course_code VARCHAR(20),
  date_of_join DATE DEFAULT NULL ,
  PRIMARY KEY (user_id, course_code),
  FOREIGN KEY (user_id) REFERENCES users(user_id) ON UPDATE CASCADE ON DELETE RESTRICT,
  FOREIGN KEY (course_code) REFERENCES courses(code) ON UPDATE CASCADE ON DELETE RESTRICT
) ENGINE = INNODB;

CREATE TABLE interested_courses (
  user_id INT,
  course_code VARCHAR(20),
  PRIMARY KEY (user_id, course_code),
  FOREIGN KEY (user_id) REFERENCES users(user_id) ON UPDATE CASCADE ON DELETE RESTRICT,
  FOREIGN KEY (course_code) REFERENCES courses(code) ON UPDATE CASCADE ON DELETE RESTRICT
) ENGINE = INNODB;

CREATE TABLE user_prog_lang(
  user_id INT,
  prog_lang_code VARCHAR(10),
  PRIMARY KEY (user_id, prog_lang_code),
  FOREIGN KEY (user_id) REFERENCES users(user_id) ON UPDATE CASCADE ON DELETE RESTRICT,
  FOREIGN KEY (prog_lang_code) REFERENCES prog_languages(code) ON UPDATE CASCADE ON DELETE RESTRICT
)ENGINE = INNODB;

CREATE TABLE user_comm_lang(
  user_id int ,
  comm_lang_code VARCHAR(10),
  PRIMARY KEY (user_id, comm_lang_code),
  FOREIGN KEY (user_id) REFERENCES users(user_id) ON UPDATE CASCADE ON DELETE RESTRICT,
  FOREIGN KEY (comm_lang_code) REFERENCES prog_languages(code) ON UPDATE CASCADE ON DELETE RESTRICT
)ENGINE = INNODB;




CREATE TABLE course_mentor(
  course_id VARCHAR(20),
  mentor_id INT,
  PRIMARY KEY (course_id, mentor_id),
  FOREIGN KEY (course_id) REFERENCES courses(code) ON UPDATE CASCADE ON DELETE RESTRICT,
  FOREIGN KEY (mentor_id) REFERENCES mentors(id) ON UPDATE CASCADE ON DELETE RESTRICT
)ENGINE = INNODB;

CREATE TABLE mentor_comm_lang(
  menor_id INT,
  comm_land_code VARCHAR(5),
  FOREIGN KEY (menor_id) REFERENCES mentors(id) ON UPDATE CASCADE ON DELETE RESTRICT,
  FOREIGN KEY (comm_land_code) REFERENCES comm_languages(code) ON UPDATE CASCADE ON DELETE RESTRICT
)ENGINE = INNODB;

CREATE TABLE mentor_stats(
  mentor_id INT,
  day DATE,
  user_id INT,
  comments VARCHAR(1000),
  user_stat INT,
  user_willing INT,
  FOREIGN KEY (mentor_id) REFERENCES mentors(id) ON UPDATE CASCADE ON DELETE RESTRICT,
  FOREIGN KEY (user_id) REFERENCES users(user_id) ON UPDATE CASCADE ON DELETE RESTRICT
)ENGINE = INNODB;

CREATE TABLE user_ans_to_faqs(
  user_id INT,
  qid INT,
  answer VARCHAR(2000),
  FOREIGN KEY (user_id) REFERENCES users(user_id) ON UPDATE CASCADE ON DELETE RESTRICT,
  FOREIGN KEY (qid) REFERENCES faqs(qid) ON UPDATE CASCADE ON DELETE RESTRICT
)ENGINE = INNODB;