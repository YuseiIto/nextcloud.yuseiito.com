OCC = docker-compose exec --user www-data app php occ 
$OCC config:system:set default_phone_region --type string --value "JP"
$OCC config:system:set default_locale --type string --value "ja_JP"
$OCC config:system:set default_language --type string --value "ja"
$OCC config:system:set memcache.local --type string --value '\OC\Memcache\Redis'
$OCC config:system:set datadirectory --type string --value '/data'
$OCC background:cron
