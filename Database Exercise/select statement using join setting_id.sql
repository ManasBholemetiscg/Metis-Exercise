select * from web_user_setting as w
left join setting as s ON  w.setting_id=s.setting_id;

