INSERT INTO web_user(web_user_id, web_user_username, web_user_first_name, web_user_last_name, web_user_email)
VALUES 
( 1 , 'jdoe' , 'John' , 'Doe' , 'john_doe@test.com'),
( 2 , 'msmith' , 'Mary' , 'Smith' , 'msmith@company.org'),
( 3 , 'hsimpson' , 'Homer' , 'Simpson' , 'homer_simpson@springfield.net');

INSERT INTO setting(setting_id, setting_description)
VALUES
( 1 , 'ShowNavigation'),
( 2 , 'DefaultPage');

INSERT INTO web_user_setting(web_user_id, setting_id, setting_data)
VALUES
(1,1,'0'),
(1,2,'5'),
(2,1,'1'),
(3,1,NULL);






