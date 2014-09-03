--zimg server config

--server config
is_daemon=1
ip='0.0.0.0'
port=4869
--thread_num=4
backlog_num=1024
max_keepalives=1
retry=3
system=io.popen('uname -sn'):read('*l')
pwd=io.popen('pwd'):read('*l')

--header config
headers='Cache-Control:max-age=7776000'
etag=1

--access config
--support mask rules like 'allow 10.1.121.138/24'
--NOTE: remove rule can improve performance
--upload_rule='allow all'
--download_rule='allow all'
admin_rule='allow 127.0.0.1'

--cache config
cache=1
mc_ip='127.0.0.1'
mc_port=11211

--log config
--log_level output specified level of log to logfile
--[[
LOG_FATAL 0           System is unusable
LOG_ALERT 1           Action must be taken immediately
LOG_CRIT 2            Critical conditions
LOG_ERROR 3           Error conditions
LOG_WARNING 4         Warning conditions
LOG_NOTICE 5          Normal, but significant
LOG_INFO 6            Information
LOG_DEBUG 7           DEBUG message
]]
log_level=6
log_name= pwd .. '/log/zimg.log'

--htdoc config
root_path= pwd .. '/www/index.html'
admin_path= pwd .. '/www/admin.html'

--image process config
disable_args=0
disable_type=0
--lua process script
script_name= pwd .. '/script/process.lua'
--format value: 'none' for original or other format names
format='jpeg'
--quality value: 1~100(default: 75)
quality=75

--storage config
--zimg support 3 ways for storage images
mode=1
--save_new value: 0.don't save any 1.save all 2.only save types in lua script
save_new=1
max_size=100*1024*1024

--mode[1]: local disk mode
img_path= pwd .. '/img'

--mode[2]: beansdb mode
beansdb_ip='127.0.0.1'
beansdb_port='7900'

--mode[3]: ssdb mode
ssdb_ip='127.0.0.1'
ssdb_port='8888'


