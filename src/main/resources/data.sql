INSERT INTO engineer (id, name, email_id, city, notice_period)
VALUES (1, 'Rohit Abhishek', 'rabhi1611@gmail.com', 'Bengaluru, Karnataka, India', '30 days');

INSERT INTO education (education_id, id, course, major, start_year, end_year, grade)
VALUES (1, 1, 'B-Tech', 'Computer Science and Engineering', '2019', '2023', '80.2%');

INSERT INTO experience (experience_id, id, role, company, summary)
VALUES (1, 1, 'Associate Engineer', 'Caterpillar Inc (Contract)', 'Working on CAT Productivity projects as a back-end developer. Daily tasks include implementing respective stories of features, Bug fixes, and learning.');

INSERT INTO profile (profile_id, id, social_name, link)
VALUES (1, 1, 'LinkedIn', 'http://localhost:80/rabhi');

INSERT INTO project (project_id, id, name, detail)
VALUES (1, 1, 'VISIONLINK PRODUCTIVITY APPLICATION, CATERPILLAR', 'This Project helps Caterpillar customers to utilize its resource efficiently');

INSERT INTO skill (skill_id, name, id)
VALUES (1,'java', 1);

INSERT INTO skill (skill_id, name, id)
VALUES (2,'spring-boot', 1);

INSERT INTO achievement (achievement_id, detail, id)
VALUES (1, 'a', 1);