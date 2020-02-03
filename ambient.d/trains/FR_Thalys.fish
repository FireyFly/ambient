ambient_is_ssid "THALYSNET"; or exit

curl -s https://www.ombord.info/api/jsonp/position/ | sed 's/^(//; s/);$//' | jq -r '"
AMBIENT_FR_THALYS_API_VERSION=\(.version)
AMBIENT_FR_THALYS_SERVER_TIME=\(.time)
AMBIENT_FR_THALYS_AGE=\(.age)
AMBIENT_FR_THALYS_LATITUDE=\(.latitude)
AMBIENT_FR_THALYS_LONGITUDE=\(.longitude)
AMBIENT_FR_THALYS_ALTITUDE=\(.altitude)
AMBIENT_FR_THALYS_SPEED=\(.speed)
AMBIENT_FR_THALYS_SPEED_UNIT=km/h
AMBIENT_FR_THALYS_CMG=\(.cmg)
AMBIENT_FR_THALYS_SATELLITES=\(.satellites)
AMBIENT_FR_THALYS_MODE=\(.mode)
"'

curl -s https://www.ombord.info/api/jsonp/user/ | sed 's/^(//; s/);$//' | jq -r '"
AMBIENT_FR_THALYS_IP=\(.ip)
AMBIENT_FR_THALYS_MAC=\(.mac)
AMBIENT_FR_THALYS_ONLINE=\(.online)
AMBIENT_FR_THALYS_TIMELEFT=\(.timeleft)
AMBIENT_FR_THALYS_AUTHENTICATED=\(.authenticated)
AMBIENT_FR_THALYS_USERCLASS=\(.userclass)
AMBIENT_FR_THALYS_EXPIRES=\(.expires)
AMBIENT_FR_THALYS_TIMEUSED=\(.timeused)
AMBIENT_FR_THALYS_DATA_DOWNLOAD_USED=\(.data_download_used)
AMBIENT_FR_THALYS_DATA_UPLOAD_USED=\(.data_upload_used)
AMBIENT_FR_THALYS_DATA_TOTAL_USED=\(.data_total_used)
AMBIENT_FR_THALYS_DATA_DOWNLOAD_LIMIT=\(.data_download_limit)
AMBIENT_FR_THALYS_DATA_UPLOAD_LIMIT=\(.data_upload_limit)
AMBIENT_FR_THALYS_DATA_TOTAL_LIMIT=\(.data_total_limit)
AMBIENT_FR_THALYS_BANDWIDTH_DOWNLOAD_LIMIT=\(.bandwidth_download_limit)
AMBIENT_FR_THALYS_BANDWIDTH_UPLOAD_LIMIT=\(.bandwidth_upload_limit)
"'
