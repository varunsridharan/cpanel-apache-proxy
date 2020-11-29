![Banner](https://cdn.svarun.dev/gh/varunsridharan/cpanel-apache-proxy/banner.jpg)

# cPanel Apache Reverse Proxy

This repository contains a simple script which can be used to create a new reverse proxy in cPanel with Apache

## Prerequisites
1. cPanel Server
2. Apache Modules
    1. [`mod_proxy`] ___-- Required___
    1. [`mod_proxy_http`] ___-- Required___
    1. [`mod_proxy_connect`] ___-- Required___
    3. [`mod_proxy_wstunnel`] _-- Optional. enable if you want to use WebSockets_

> Check out this tutorial on how to enable apache modules in cPanel

[`mod_proxy`]: http://httpd.apache.org/docs/current/mod/mod_proxy.html
[`mod_proxy_http`]: https://httpd.apache.org/docs/2.4/mod/mod_proxy_http.html
[`mod_proxy_connect`]: https://httpd.apache.org/docs/2.4/mod/mod_proxy_connect.html
[`mod_proxy_wstunnel`]: https://httpd.apache.org/docs/2.4/mod/mod_proxy_wstunnel.html

## 🚀 Usage

### 1. Download The Proxy Script
```shell
wget https://raw.githubusercontent.com/varunsridharan/cpanel-apache-proxy/main/proxy.sh
```


### 2. Run To Create A New Proxy
```shell
# proxy.sh {account_username} {subdomain/domain} {local_proxy_path}

proxy.sh "cpanelAccountName" "plex.mydomain.com" "http://192.168.1.41:32000"
```

### 3. Rebuild & Restart HTTP

```
/scripts/rebuildhttpdconf && service httpd restart
```

----

<!-- START common-footer.mustache -->

<!-- END common-footer.mustache -->
