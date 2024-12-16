current_path=$(pwd)
cd nginx-1.26.2 && ./configure --add-module=${current_path}/ngx_http_proxy_connect_module-0.0.7 && make && make install
