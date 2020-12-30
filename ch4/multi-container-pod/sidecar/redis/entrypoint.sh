redis-server --daemonize yes && sleep 5 
redis-cli < /redis-master/init.redis 
redis-cli save 
redis-cli shutdown 
redis-server 
