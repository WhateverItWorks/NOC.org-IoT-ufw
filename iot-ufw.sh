#!/bin/sh

# Block all IoT scanners like Shodan, Censys, Shadowserver, PAN Expanse etc. traffic from exposing your ip behind noc.org
# Censys.io Information: https://support.censys.io/hc/en-us/articles/360043177092-Opt-Out-of-Data-Collection
# Shodan.io Information: https://wiki.ipfire.org/configuration/firewall/blockshodan
# Additional Information: https://scrapeops.io/web-scraping-playbook/how-to-bypass-cloudflare/
# Additional Information: https://community.checkpoint.com/t5/Management/HowTo-Block-IoT-scanners-like-Shodan-Censys-Shadowserver-PAN/td-p/124612
# Additional Ways to protect your origin: https://kazamasion.medium.com/methods-to-prevent-leaking-websites-origin-server-ip-behind-cdn-2dbcf1dd444c
sudo ufw deny proto tcp from 162.142.125.0/24 comment 'Censys'; done # Censys
sudo ufw deny proto tcp from 167.248.133.0/24 comment 'Censys'; done # Censys
sudo ufw deny proto tcp from 192.35.168.0/23 comment 'Censys'; done  # Censys
sudo ufw deny proto tcp from 74.120.14.0/24 comment 'Censys'; done   # Censys
sudo ufw deny proto tcp from 167.94.138.0/24 comment 'Censys'; done  # Censys
sudo ufw deny proto tcp from 167.94.145.0/24 comment 'Censys'; done  # Censys
sudo ufw deny proto tcp from 167.94.146.0/24 comment 'Censys'; done  # Censys
sudo ufw deny proto tcp from 2602:80d:1000:b0cc:e::/80 comment 'Censys'; done # Censys
sudo ufw deny proto tcp from 2620:96:e000:b0cc:e::/80 comment 'Censys'; done # Censys

ufw reload > /dev/null