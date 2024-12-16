current_path=$(pwd)
cd nginx-1.26.2 && ./configure --add-module=${current_path}/ngx_http_proxy_connect_module && make && make install
