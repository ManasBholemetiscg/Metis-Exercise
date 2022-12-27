-- Table: web_user
CREATE TABLE web_user (
    web_user_id INT  NOT NULL,
    web_user_username VARCHAR(100)  NOT NULL,
    web_user_first_name VARCHAR(100)  NULL,
    web_user_last_name VARCHAR(100)  NULL,
    web_user_email VARCHAR(100)  NOT NULL,
    CONSTRAINT web_user_pk PRIMARY KEY  (web_user_id)
);

CREATE TABLE setting (
    setting_id INT  NOT NULL,
    setting_description VARCHAR(100)  NOT NULL,
    CONSTRAINT setting_pk PRIMARY KEY  (setting_id)
);

-- Table: web_user_setting
CREATE TABLE web_user_setting (
    setting_data VARCHAR(100)  NULL,
    setting_id INT  NOT NULL,
    web_user_id INT  NOT NULL,
    CONSTRAINT web_user_setting_pk PRIMARY KEY  (setting_id,web_user_id)
);

ALTER TABLE web_user_setting ADD CONSTRAINT web_user_setting_setting
    FOREIGN KEY (setting_id)
    REFERENCES setting (setting_id);

ALTER TABLE web_user_setting ADD CONSTRAINT web_user_setting_web_user
    FOREIGN KEY (web_user_id)
    REFERENCES web_user (web_user_id);


