# Openwrt Upgrade Packages

## Description

This script is Openwrt Upgrade and patches for applications. Installation of pre-build packages directly by the **opkg** utility.

## Usage

1. Download opkg-update.sh on your openwrt system. 

```
wget 'https://raw.githubusercontent.com/semihsak/openwrt-upgrade/master/opkg-upgrade.sh' -O "opkg-upgrade.sh"
```

2. You must change executable permission your own user for manual usage.

```
chmod 700 opkg-upgrade.sh
```
3. Or recommend usage by cron. You get permission to run file for cron.
```
chown cron opkg-upgrade.sh
```
4. For example cron usage

We assume you config to run At 05:00 A.M. on every Monday. You paste bellow code after run **crontab -e** command. For more visit [crontab.guru](https://crontab.guru)

```
5 * * * 1 opkg-upgrade.sh
```

## License

MIT LICENSE

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
