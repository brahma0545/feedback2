INSERT INTO courses VALUES ('gate2014','GATE Complete Course-2014');
INSERT INTO courses VALUES ('gate2015','GATE Complete Course-2015');
INSERT INTO courses VALUES ('gate2016','GATE Complete Course-2016');
INSERT INTO courses VALUES ('gate2017','GATE Complete Course-2017');
INSERT INTO courses VALUES ('gate2018','GATE Complete Course-2018');
INSERT INTO courses VALUES ('gate2019','GATE Complete Course-2019');
INSERT INTO courses VALUES ('gate2014_em','Engineering Mathematics-2014');
INSERT INTO courses VALUES ('gate2015_em','Engineering Mathematics-2015');
INSERT INTO courses VALUES ('gate2016_em','Engineering Mathematics-2016');
INSERT INTO courses VALUES ('gate2017_em','Engineering Mathematics-2017');
INSERT INTO courses VALUES ('gate2018_em','Engineering Mathematics-2018');
INSERT INTO courses VALUES ('gate2019_em','Engineering Mathematics-2019');
INSERT INTO courses VALUES ('gate2014_dl','Digital logic-2014');
INSERT INTO courses VALUES ('gate2015_dl','Digital logic-2015');
INSERT INTO courses VALUES ('gate2016_dl','Digital logic-2016');
INSERT INTO courses VALUES ('gate2017_dl','Digital logic-2017');
INSERT INTO courses VALUES ('gate2018_dl','Digital logic-2018');
INSERT INTO courses VALUES ('gate2019_dl','Digital logic-2019');
INSERT INTO courses VALUES ('gate2014_co','Computer Organization and Architecture-2014');
INSERT INTO courses VALUES ('gate2015_co','Computer Organization and Architecture-2015');
INSERT INTO courses VALUES ('gate2016_co','Computer Organization and Architecture-2016');
INSERT INTO courses VALUES ('gate2017_co','Computer Organization and Architecture-2017');
INSERT INTO courses VALUES ('gate2018_co','Computer Organization and Architecture-2018');
INSERT INTO courses VALUES ('gate2019_co','Computer Organization and Architecture-2019');
INSERT INTO courses VALUES ('gate2014_ds','Programming and DS-2014');
INSERT INTO courses VALUES ('gate2015_ds','Programming and DS-2015');
INSERT INTO courses VALUES ('gate2016_ds','Programming and DS-2016');
INSERT INTO courses VALUES ('gate2017_ds','Programming and DS-2017');
INSERT INTO courses VALUES ('gate2018_ds','Programming and DS-2018');
INSERT INTO courses VALUES ('gate2019_ds','Programming and DS-2019');
INSERT INTO courses VALUES ('gate2014_algo','Algorithms-2014');
INSERT INTO courses VALUES ('gate2015_algo','Algorithms-2015');
INSERT INTO courses VALUES ('gate2016_algo','Algorithms-2016');
INSERT INTO courses VALUES ('gate2017_algo','Algorithms-2017');
INSERT INTO courses VALUES ('gate2018_algo','Algorithms-2018');
INSERT INTO courses VALUES ('gate2019_algo','Algorithms-2019');
INSERT INTO courses VALUES ('gate2014_toc','Theory of Computation-2014');
INSERT INTO courses VALUES ('gate2015_toc','Theory of Computation-2015');
INSERT INTO courses VALUES ('gate2016_toc','Theory of Computation-2016');
INSERT INTO courses VALUES ('gate2017_toc','Theory of Computation-2017');
INSERT INTO courses VALUES ('gate2018_toc','Theory of Computation-2018');
INSERT INTO courses VALUES ('gate2019_toc','Theory of Computation-2019');
INSERT INTO courses VALUES ('gate2014_cd','Compiler Design-2014');
INSERT INTO courses VALUES ('gate2015_cd','Compiler Design-2015');
INSERT INTO courses VALUES ('gate2016_cd','Compiler Design-2016');
INSERT INTO courses VALUES ('gate2017_cd','Compiler Design-2017');
INSERT INTO courses VALUES ('gate2018_cd','Compiler Design-2018');
INSERT INTO courses VALUES ('gate2019_cd','Compiler Design-2019');
INSERT INTO courses VALUES ('gate2014_os','Operating Systems-2014');
INSERT INTO courses VALUES ('gate2015_os','Operating Systems-2015');
INSERT INTO courses VALUES ('gate2016_os','Operating Systems-2016');
INSERT INTO courses VALUES ('gate2017_os','Operating Systems-2017');
INSERT INTO courses VALUES ('gate2018_os','Operating Systems-2018');
INSERT INTO courses VALUES ('gate2019_os','Operating Systems-2019');
INSERT INTO courses VALUES ('gate2014_db','Databases-2014');
INSERT INTO courses VALUES ('gate2015_db','Databases-2015');
INSERT INTO courses VALUES ('gate2016_db','Databases-2016');
INSERT INTO courses VALUES ('gate2017_db','Databases-2017');
INSERT INTO courses VALUES ('gate2018_db','Databases-2018');
INSERT INTO courses VALUES ('gate2019_db','Databases-2019');
INSERT INTO courses VALUES ('gate2014_cn','Computer Networks-2014');
INSERT INTO courses VALUES ('gate2015_cn','Computer Networks-2015');
INSERT INTO courses VALUES ('gate2016_cn','Computer Networks-2016');
INSERT INTO courses VALUES ('gate2017_cn','Computer Networks-2017');
INSERT INTO courses VALUES ('gate2018_cn','Computer Networks-2018');
INSERT INTO courses VALUES ('gate2019_cn','Computer Networks-2019');
INSERT INTO courses VALUES ('inp','Interview Preparation');
INSERT INTO courses VALUES ('java','Java');
INSERT INTO courses VALUES ('python','Python');
INSERT INTO courses VALUES ('c','C Proramming');
INSERT INTO courses VALUES ('hadoop','Hadoop and Bigdata');
INSERT INTO courses VALUES ('gate','GATE Complete Course');
INSERT INTO courses VALUES ('frontend','Front end');
INSERT INTO courses VALUES ('pydjango','Python with Django');
INSERT INTO courses VALUES ('projects','Projects');
INSERT INTO courses VALUES ('fullstack','Full Stack');
INSERT INTO courses VALUES ('gatexcel','GatExcel');
INSERT INTO courses VALUES ('cpp','GatExcel');
INSERT INTO courses VALUES ('jspring','Java with Spring');
INSERT INTO courses VALUES ('jplay','Java with Play ');
INSERT INTO courses VALUES ('nosql','NoSQL Databases');
INSERT INTO courses VALUES ('ml','Machine Learning');
INSERT INTO courses VALUES ('spark','Data Analysis with Spark');
INSERT INTO courses VALUES ('mean','MEAN Stack');

# Inserting in branch table

INSERT INTO branch VALUES ('ae','Aerospace Engineering');
INSERT INTO branch VALUES ('ag','Agricultural Engineering');
INSERT INTO branch VALUES ('arch','Architectural Engineering');
INSERT INTO branch VALUES ('bio','Bioengineering and biomedical Engineering');
INSERT INTO branch VALUES ('ch','Chemical Engineering');
INSERT INTO branch VALUES ('ce','Civil Engineering');
INSERT INTO branch VALUES ('cs','Computer Science or Information Technology');
INSERT INTO branch VALUES ('ee','Electrical and Electronics Engineering');
INSERT INTO branch VALUES ('ec','Electronics and Communication Engineering');
INSERT INTO branch VALUES ('ie','Industrial Engineering');
INSERT INTO branch VALUES ('ine','Instrumentation Engineering');
INSERT INTO branch VALUES ('me','Mechanical Engineering');
INSERT INTO branch VALUES ('ot','Other');

# inserting into program lang table

INSERT INTO prog_languages VALUES ('c','C Programming');
INSERT INTO prog_languages VALUES ('cpp','C++ Progrmming');
INSERT INTO prog_languages VALUES ('java','Java');
INSERT INTO prog_languages VALUES ('python','Python');
INSERT INTO prog_languages VALUES ('php','PHP');
INSERT INTO prog_languages VALUES ('ruby','Ruby/Rails');
INSERT INTO prog_languages VALUES ('html','HTML/CSS');

# inserting into com lang table

INSERT INTO comm_languages VALUES ('eng', 'English');
INSERT INTO comm_languages VALUES ('hn', 'Hindi');
INSERT INTO comm_languages VALUES ('tl','Telugu');
INSERT INTO comm_languages VALUES ('bn','Bengali');

# inserting into organization table

INSERT INTO organization VALUES (1, 'Student');
INSERT INTO organization VALUES (2, 'Not Working');
INSERT INTO organization VALUES (3, 'Product Based');
INSERT INTO organization VALUES (4, 'Service Based');
INSERT INTO organization VALUES (5, 'Freelancer');
INSERT INTO organization VALUES (6, 'Startup');

# inserting into profile table

INSERT INTO profile VALUES ('stdnt','Student');
INSERT INTO profile VALUES ('grt', 'Graduated');
INSERT INTO profile VALUES ('sd','Software Developer');
INSERT INTO profile VALUES ('st','Software Trainee');
INSERT INTO profile VALUES ('qa','Quality Analyst');
INSERT INTO profile VALUES ('wb', 'Web Designer');
INSERT INTO profile VALUES ('na','Network Admin');
INSERT INTO profile VALUES ('dba','Database Admin');
INSERT INTO profile VALUES ('da','Data Analyst');

# inserting into user table

# INSERT INTO users VALUES ('','brahma','brahma0545@gmail.com','07550988980',2017-02-09,'M','Andhra Pradesh','PLOT-35 PHASE-II TNGO COLONY NEAR Q-CITY GACHIBOWLLI',0cf3b8599690042d68738fdc5be5b6c9.jpg,97,'CS',2013,72,'JNTU','JNTU','CS',2015,8.84,'IITKGP','IITKGP','Java By Oracle','SD',6,2,'https://www.linkedin.com/in/brahma-reddy-88465678',07sol.pdf,11,'ML','you are too good',6);

INSERT INTO users VALUES ('1','brahma','brahma0545@gmail.com','07550988980',DEFAULT ,DEFAULT ,DEFAULT ,DEFAULT ,DEFAULT ,97,'cs',2013,72,'JNTU','JNTU','cs',2015,8.84,'IITKGP','IITKGP','Java By Oracle','sd',6,2,'https://www.linkedin.com/in/brahma-reddy-88465678',DEFAULT ,'ML','you are too good',6);

INSERT INTO users VALUES (NULL,'brahma','brahmasus@gmal.com','07550988900',DEFAULT ,DEFAULT ,DEFAULT ,DEFAULT ,DEFAULT ,98,'cs',2013,72,'JNTU','JNTU','cs',2015,8.84,'IITKGP','IITKGP','Java','stdnt',1,0,'https://www.linkedin.com/in/brahma-reddy-88465678',DEFAULT,10,'ML','YOu are so good',2);

SELECT `AUTO_INCREMENT` FROM  INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = 'feedback' AND   TABLE_NAME   = 'users';