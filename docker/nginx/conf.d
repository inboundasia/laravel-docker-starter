server {
    listen       80;
    server_name  localhost;

    root   /var/www/html/public;
    index index.html index.php;

    location / {
        try_files $uri $uri/ /index.php?$query_string;
    }

    error_page   500 502 503 504  /50x.html;
    location = /50x.html {
        root   /var/www/html;
    }

    location ~ \.php$ {
        fastcgi_pass   php:9000;
        fastcgi_param  SCRIPT_FILENAME  $document_root$fastcgi_script_name;
        include        fastcgi_params;
    }
}
