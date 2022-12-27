select ws.web_user_username, s.setting_description, w.setting_data
from web_user_setting as w
left join setting as s ON  w.setting_id=s.setting_id
left join web_user as ws ON w.web_user_id= ws.web_user_id
ORDER BY ws.web_user_username, s.setting_description;