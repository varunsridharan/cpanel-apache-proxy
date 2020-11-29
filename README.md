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

> Check out this tutorial on [Configure Reverse Proxy In cPanel](https://blog.svarun.dev/configure-reverse-proxy-in-cpanel)

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
## 📝 Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

[Checkout CHANGELOG.md](https://github.com/varunsridharan/cpanel-apache-proxy/blob/main/CHANGELOG.md)


## 🤝 Contributing
If you would like to help, please take a look at the list of [issues](https://github.com/varunsridharan/cpanel-apache-proxy/issues/).


## 📜  License & Conduct
- [**GNU General Public License v3.0**](https://github.com/varunsridharan/cpanel-apache-proxy/blob/main/LICENSE) © [Varun Sridharan](website)
- [Code of Conduct](https://github.com/varunsridharan/.github/blob/master/CODE_OF_CONDUCT.md)


## 📣 Feedback
- ⭐ This repository if this project helped you! :wink:
- Create An [🔧 Issue](https://github.com/varunsridharan/cpanel-apache-proxy/issues/) if you need help / found a bug


## 💰 Sponsor
[I][twitter] fell in love with open-source in 2013 and there has been no looking back since! You can read more about me [here][website].
If you, or your company, use any of my projects or like what I’m doing, kindly consider backing me. I'm in this for the long run.

- ☕ How about we get to know each other over coffee? Buy me a cup for just [**$9.99**][buymeacoffee]
- ☕️☕️ How about buying me just 2 cups of coffee each month? You can do that for as little as [**$9.99**][buymeacoffee]
- 🔰         We love bettering open-source projects. Support 1-hour of open-source maintenance for [**$24.99 one-time?**][paypal]
- 🚀         Love open-source tools? Me too! How about supporting one hour of open-source development for just [**$49.99 one-time ?**][paypal]

<!-- Personl Links -->
[paypal]: https://sva.onl/paypal
[buymeacoffee]: https://sva.onl/buymeacoffee
[twitter]: https://sva.onl/twitter/
[website]: https://sva.onl/website/


## Connect & Say 👋
- **Follow** me on [👨‍💻 Github][github] and stay updated on free and open-source software
- **Follow** me on [🐦 Twitter][twitter] to get updates on my latest open source projects
- **Message** me on [📠 Telegram][telegram]
- **Follow** my pet on [Instagram][sofythelabrador] for some _dog-tastic_ updates!

<!-- Personl Links -->
[sofythelabrador]: https://www.instagram.com/sofythelabrador/
[github]: https://sva.onl/github/
[twitter]: https://sva.onl/twitter/
[telegram]: https://sva.onl/telegram/


---

<p align="center">
<i>Built With ♥ By <a href="https://sva.onl/twitter"  target="_blank" rel="noopener noreferrer">Varun Sridharan</a> <a href="https://en.wikipedia.org/wiki/India">
   <img src="https://cdn.svarun.dev/flag-india.jpg" width="20px"/></a> </i> <br/><br/>
   <img src="https://cdn.svarun.dev/codeispoetry.png"/>
</p>

---


<!-- END common-footer.mustache -->
