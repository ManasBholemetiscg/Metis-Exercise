select s.setting_description, ws.web_user_last_name, w.setting_data
from web_user_setting as w
left join setting as s ON  w.setting_id=s.setting_id
left join web_user as ws ON w.web_user_id= ws.web_user_id
where ws.web_user_last_name LIKE 'S%' AND s.setting_id = 1
ORDER BY ws.web_user_last_name;
