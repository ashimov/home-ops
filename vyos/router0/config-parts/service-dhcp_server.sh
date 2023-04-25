#!/bin/vbash
# shellcheck shell=bash

set service dhcp-server hostfile-update
set service dhcp-server host-decl-name

# guest VLAN
set service dhcp-server shared-network-name GUEST authoritative
set service dhcp-server shared-network-name GUEST ping-check
set service dhcp-server shared-network-name GUEST subnet 10.8.3.0/24 default-router '10.8.3.1'
set service dhcp-server shared-network-name GUEST subnet 10.8.3.0/24 lease '86400'
set service dhcp-server shared-network-name GUEST subnet 10.8.3.0/24 name-server '10.9.4.4'
set service dhcp-server shared-network-name GUEST subnet 10.8.3.0/24 name-server '192.168.1.3'
set service dhcp-server shared-network-name GUEST subnet 10.8.3.0/24 range 0 start '10.8.3.6'
set service dhcp-server shared-network-name GUEST subnet 10.8.3.0/24 range 0 stop '10.8.3.254'

# iot VLAN
set service dhcp-server shared-network-name IOT authoritative
set service dhcp-server shared-network-name IOT ping-check
set service dhcp-server shared-network-name IOT subnet 10.8.50.0/23 default-router '10.8.50.1'
set service dhcp-server shared-network-name IOT subnet 10.8.50.0/23 domain-name 'socozy.casa'
set service dhcp-server shared-network-name IOT subnet 10.8.50.0/23 lease '86400'
set service dhcp-server shared-network-name IOT subnet 10.8.50.0/23 name-server '10.5.0.4'
set service dhcp-server shared-network-name IOT subnet 10.8.50.0/23 range 0 start '10.8.50.100'
set service dhcp-server shared-network-name IOT subnet 10.8.50.0/23 range 0 stop '10.8.50.254'

set service dhcp-server shared-network-name IOT subnet 10.8.50.0/23 static-mapping oven ip-address '10.8.50.50'
set service dhcp-server shared-network-name IOT subnet 10.8.50.0/23 static-mapping oven mac-address '00:1d:63:34:f5:f7'
set service dhcp-server shared-network-name IOT subnet 10.8.50.0/23 static-mapping fire-tablet-dashboard ip-address '10.8.50.10'
set service dhcp-server shared-network-name IOT subnet 10.8.50.0/23 static-mapping fire-tablet-dashboard mac-address '48:78:5e:d2:2f:53'
set service dhcp-server shared-network-name IOT subnet 10.8.50.0/23 static-mapping octoprint ip-address '10.8.50.52'
set service dhcp-server shared-network-name IOT subnet 10.8.50.0/23 static-mapping octoprint mac-address 'e4:5f:01:a3:5c:2a'
set service dhcp-server shared-network-name IOT subnet 10.8.50.0/23 static-mapping brother-label-printer ip-address '10.8.50.53'
set service dhcp-server shared-network-name IOT subnet 10.8.50.0/23 static-mapping brother-label-printer mac-address '30:c9:ab:e8:6c:af'
set service dhcp-server shared-network-name IOT subnet 10.8.50.0/23 static-mapping brother-printer ip-address '10.8.50.54'
set service dhcp-server shared-network-name IOT subnet 10.8.50.0/23 static-mapping brother-printer mac-address 'b4:22:00:40:d6:9a'

# not VLAN
set service dhcp-server shared-network-name NOT authoritative
set service dhcp-server shared-network-name NOT ping-check
set service dhcp-server shared-network-name NOT subnet 10.8.60.0/23 default-router '10.8.60.1'
set service dhcp-server shared-network-name NOT subnet 10.8.60.0/23 domain-name 'socozy.casa'
set service dhcp-server shared-network-name NOT subnet 10.8.60.0/23 lease '86400'
set service dhcp-server shared-network-name NOT subnet 10.8.60.0/23 name-server '10.5.0.4'
set service dhcp-server shared-network-name NOT subnet 10.8.60.0/23 range 0 start '10.8.60.100'
set service dhcp-server shared-network-name NOT subnet 10.8.60.0/23 range 0 stop '10.8.61.254'

set service dhcp-server shared-network-name NOT subnet 10.8.60.0/23 static-mapping wled-gr-rgb ip-address '10.8.60.102'
set service dhcp-server shared-network-name NOT subnet 10.8.60.0/23 static-mapping wled-gr-rgb mac-address 'c4:dd:57:b3:bc:c0'
set service dhcp-server shared-network-name NOT subnet 10.8.60.0/23 static-mapping athom-smart-plug-bedroom-desk ip-address '10.8.60.104'
set service dhcp-server shared-network-name NOT subnet 10.8.60.0/23 static-mapping athom-smart-plug-bedroom-desk mac-address '4c:eb:d6:02:d3:59'
set service dhcp-server shared-network-name NOT subnet 10.8.60.0/23 static-mapping shelly-childroom ip-address '10.8.60.10'
set service dhcp-server shared-network-name NOT subnet 10.8.60.0/23 static-mapping shelly-childroom mac-address '3C:61:05:E5:07:0B'
set service dhcp-server shared-network-name NOT subnet 10.8.60.0/23 static-mapping shelly-dining ip-address '10.8.60.11'
set service dhcp-server shared-network-name NOT subnet 10.8.60.0/23 static-mapping shelly-dining mac-address 'E8:DB:84:D4:FB:CB'
set service dhcp-server shared-network-name NOT subnet 10.8.60.0/23 static-mapping shelly-office-overhead ip-address '10.8.60.12'
set service dhcp-server shared-network-name NOT subnet 10.8.60.0/23 static-mapping shelly-office-overhead mac-address 'E8:DB:84:D7:D3:CD'
set service dhcp-server shared-network-name NOT subnet 10.8.60.0/23 static-mapping shelly-terrace ip-address '10.8.60.13'
set service dhcp-server shared-network-name NOT subnet 10.8.60.0/23 static-mapping shelly-terrace mac-address 'E8:DB:84:D7:DD:29'
set service dhcp-server shared-network-name NOT subnet 10.8.60.0/23 static-mapping shelly-closet ip-address '10.8.60.14'
set service dhcp-server shared-network-name NOT subnet 10.8.60.0/23 static-mapping shelly-closet mac-address 'E8:DB:84:D7:E6:32'
set service dhcp-server shared-network-name NOT subnet 10.8.60.0/23 static-mapping shelly-sofa-spots ip-address '10.8.60.15'
set service dhcp-server shared-network-name NOT subnet 10.8.60.0/23 static-mapping shelly-sofa-spots mac-address '3C:61:05:E3:B5:D5'
set service dhcp-server shared-network-name NOT subnet 10.8.60.0/23 static-mapping shelly-tv-spots ip-address '10.8.60.16'
set service dhcp-server shared-network-name NOT subnet 10.8.60.0/23 static-mapping shelly-tv-spots mac-address '3C:61:05:E4:07:BA'
set service dhcp-server shared-network-name NOT subnet 10.8.60.0/23 static-mapping shelly-entryway-spots ip-address '10.8.60.17'
set service dhcp-server shared-network-name NOT subnet 10.8.60.0/23 static-mapping shelly-entryway-spots mac-address '3C:61:05:E4:4F:8E'
set service dhcp-server shared-network-name NOT subnet 10.8.60.0/23 static-mapping shelly-office-spots ip-address '10.8.60.18'
set service dhcp-server shared-network-name NOT subnet 10.8.60.0/23 static-mapping shelly-office-spots mac-address '3C:61:05:E4:75:68'
set service dhcp-server shared-network-name NOT subnet 10.8.60.0/23 static-mapping shelly-kitchen-spots ip-address '10.8.60.19'
set service dhcp-server shared-network-name NOT subnet 10.8.60.0/23 static-mapping shelly-kitchen-spots mac-address '3C:61:05:E4:75:BD'
set service dhcp-server shared-network-name NOT subnet 10.8.60.0/23 static-mapping shelly-bathroom-shower ip-address '10.8.60.20'
set service dhcp-server shared-network-name NOT subnet 10.8.60.0/23 static-mapping shelly-bathroom-shower mac-address '98:CD:AC:26:2C:D0'
set service dhcp-server shared-network-name NOT subnet 10.8.60.0/23 static-mapping shelly-bathroom-mirror ip-address '10.8.60.21'
set service dhcp-server shared-network-name NOT subnet 10.8.60.0/23 static-mapping shelly-bathroom-mirror mac-address '98:CD:AC:26:46:11'
set service dhcp-server shared-network-name NOT subnet 10.8.60.0/23 static-mapping shelly-bed ip-address '10.8.60.22'
set service dhcp-server shared-network-name NOT subnet 10.8.60.0/23 static-mapping shelly-bed mac-address '98:CD:AC:26:51:29'
set service dhcp-server shared-network-name NOT subnet 10.8.60.0/23 static-mapping shelly-kitchen-cabinets ip-address '10.8.60.23'
set service dhcp-server shared-network-name NOT subnet 10.8.60.0/23 static-mapping shelly-kitchen-cabinets mac-address 'E8:DB:84:DD:D0:6F'
set service dhcp-server shared-network-name NOT subnet 10.8.60.0/23 static-mapping shelly-bathroom-overhead-fan ip-address '10.8.60.24'
set service dhcp-server shared-network-name NOT subnet 10.8.60.0/23 static-mapping shelly-bathroom-overhead-fan mac-address '3C:61:05:E4:46:6A'
set service dhcp-server shared-network-name NOT subnet 10.8.60.0/23 static-mapping shelly-toilet ip-address '10.8.60.25'
set service dhcp-server shared-network-name NOT subnet 10.8.60.0/23 static-mapping shelly-toilet mac-address 'E8:DB:84:AA:5A:58'
set service dhcp-server shared-network-name NOT subnet 10.8.60.0/23 static-mapping shelly-gr-switch ip-address '10.8.60.26'
set service dhcp-server shared-network-name NOT subnet 10.8.60.0/23 static-mapping shelly-gr-switch mac-address 'E8:DB:84:AA:BB:8C'
set service dhcp-server shared-network-name NOT subnet 10.8.60.0/23 static-mapping shelly-hallway ip-address '10.8.60.27'
set service dhcp-server shared-network-name NOT subnet 10.8.60.0/23 static-mapping shelly-hallway mac-address 'E8:DB:84:D7:DA:FF'
set service dhcp-server shared-network-name NOT subnet 10.8.60.0/23 static-mapping bedroom-switch-esphome ip-address '10.8.60.28'
set service dhcp-server shared-network-name NOT subnet 10.8.60.0/23 static-mapping bedroom-switch-esphome mac-address 'e8:db:84:aa:8a:ab'
set service dhcp-server shared-network-name NOT subnet 10.8.60.0/23 static-mapping quinled-a-south ip-address '10.8.60.29'
set service dhcp-server shared-network-name NOT subnet 10.8.60.0/23 static-mapping quinled-a-south mac-address '84:cc:a8:69:9a:38'
set service dhcp-server shared-network-name NOT subnet 10.8.60.0/23 static-mapping quinled-b-north ip-address '10.8.60.30'
set service dhcp-server shared-network-name NOT subnet 10.8.60.0/23 static-mapping quinled-b-north mac-address '84:cc:a8:69:9c:50'
set service dhcp-server shared-network-name NOT subnet 10.8.60.0/23 static-mapping shelly-gr2 ip-address '10.8.60.31'
set service dhcp-server shared-network-name NOT subnet 10.8.60.0/23 static-mapping shelly-gr2 mac-address 'E8:DB:84:AA:BD:27'
set service dhcp-server shared-network-name NOT subnet 10.8.60.0/23 static-mapping wled-office ip-address '10.8.60.32'
set service dhcp-server shared-network-name NOT subnet 10.8.60.0/23 static-mapping wled-office mac-address 'c4:dd:57:b3:47:78'
set service dhcp-server shared-network-name NOT subnet 10.8.60.0/23 static-mapping shelly-lr-radiator ip-address '10.8.60.33'
set service dhcp-server shared-network-name NOT subnet 10.8.60.0/23 static-mapping shelly-lr-radiator mac-address '98:CD:AC:26:30:DD'
set service dhcp-server shared-network-name NOT subnet 10.8.60.0/23 static-mapping shelly-office-workbench ip-address '10.8.60.34'
set service dhcp-server shared-network-name NOT subnet 10.8.60.0/23 static-mapping shelly-office-workbench mac-address '98:CD:AC:26:76:8C'
set service dhcp-server shared-network-name NOT subnet 10.8.60.0/23 static-mapping shelly-office-workbench ip-address '10.8.60.35'
set service dhcp-server shared-network-name NOT subnet 10.8.60.0/23 static-mapping shelly-office-workbench mac-address 'E8:DB:84:AC:6D:4A'
set service dhcp-server shared-network-name NOT subnet 10.8.60.0/23 static-mapping shelly-plug-network-cabinet ip-address '10.8.60.36'
set service dhcp-server shared-network-name NOT subnet 10.8.60.0/23 static-mapping shelly-plug-network-cabinet mac-address 'E8:68:E7:F1:4A:F9'
set service dhcp-server shared-network-name NOT subnet 10.8.60.0/23 static-mapping shelly-plug-kitchen-dishwasher ip-address '10.8.60.37'
set service dhcp-server shared-network-name NOT subnet 10.8.60.0/23 static-mapping shelly-plug-kitchen-dishwasher mac-address 'E8:68:E7:F1:45:86'
set service dhcp-server shared-network-name NOT subnet 10.8.60.0/23 static-mapping shelly-em-socozy ip-address '10.8.60.38'
set service dhcp-server shared-network-name NOT subnet 10.8.60.0/23 static-mapping shelly-em-socozy mac-address '24:4C:AB:43:26:59'
set service dhcp-server shared-network-name NOT subnet 10.8.60.0/23 static-mapping shelly-plug-kitchen-quooker ip-address '10.8.60.39'
set service dhcp-server shared-network-name NOT subnet 10.8.60.0/23 static-mapping shelly-plug-kitchen-quooker mac-address 'E8:68:E7:F1:B4:6D'
set service dhcp-server shared-network-name NOT subnet 10.8.60.0/23 static-mapping shelly-plug-lr-tv1 ip-address '10.8.60.40'
set service dhcp-server shared-network-name NOT subnet 10.8.60.0/23 static-mapping shelly-plug-lr-tv1 mac-address 'E8:68:E7:F1:A4:8D'
set service dhcp-server shared-network-name NOT subnet 10.8.60.0/23 static-mapping shelly-plug-tv2 ip-address '10.8.60.41'
set service dhcp-server shared-network-name NOT subnet 10.8.60.0/23 static-mapping shelly-plug-tv2 mac-address 'E8:68:E7:F1:60:3F'
set service dhcp-server shared-network-name NOT subnet 10.8.60.0/23 static-mapping shelly-plug-washing-machine ip-address '10.8.60.42'
set service dhcp-server shared-network-name NOT subnet 10.8.60.0/23 static-mapping shelly-plug-washing-machine mac-address 'E8:68:E7:F1:7D:62'
set service dhcp-server shared-network-name NOT subnet 10.8.60.0/23 static-mapping shelly-plug-office-desk1 ip-address '10.8.60.43'
set service dhcp-server shared-network-name NOT subnet 10.8.60.0/23 static-mapping shelly-plug-office-desk1 mac-address 'C4:5B:BE:D9:B1:EA'
set service dhcp-server shared-network-name NOT subnet 10.8.60.0/23 static-mapping shelly-plug-office-desk2 ip-address '10.8.60.44'
set service dhcp-server shared-network-name NOT subnet 10.8.60.0/23 static-mapping shelly-plug-office-desk2 mac-address 'E8:68:E7:F1:43:0C'
set service dhcp-server shared-network-name NOT subnet 10.8.60.0/23 static-mapping bathroom-climate-sensor ip-address '10.8.60.45'
set service dhcp-server shared-network-name NOT subnet 10.8.60.0/23 static-mapping bathroom-climate-sensor mac-address 'EC:FA:BC:59:42:9F'
set service dhcp-server shared-network-name NOT subnet 10.8.60.0/23 static-mapping wled-childroom-nightlight ip-address '10.8.60.46'
set service dhcp-server shared-network-name NOT subnet 10.8.60.0/23 static-mapping wled-childroom-nightlight mac-address 'ec:fa:bc:59:3c:51'
set service dhcp-server shared-network-name NOT subnet 10.8.60.0/23 static-mapping wled-fairylights ip-address '10.8.60.47'
set service dhcp-server shared-network-name NOT subnet 10.8.60.0/23 static-mapping wled-fairylights mac-address '78:21:84:4f:50:f4'


# LAN
set service dhcp-server shared-network-name LAN authoritative
set service dhcp-server shared-network-name LAN ping-check
set service dhcp-server shared-network-name LAN subnet 192.168.1.0/24 default-router '192.168.1.1'
set service dhcp-server shared-network-name LAN subnet 192.168.1.0/24 lease '86400'
set service dhcp-server shared-network-name LAN subnet 192.168.1.0/24 name-server '10.9.4.4'
set service dhcp-server shared-network-name LAN subnet 192.168.1.0/24 name-server '192.168.1.3'
set service dhcp-server shared-network-name LAN subnet 192.168.1.0/24 range 0 start '192.168.1.200'
set service dhcp-server shared-network-name LAN subnet 192.168.1.0/24 range 0 stop '192.168.1.254'

set service dhcp-server shared-network-name LAN subnet 192.168.1.0/24 static-mapping unifi-cloud-key ip-address '192.168.1.2'
set service dhcp-server shared-network-name LAN subnet 192.168.1.0/24 static-mapping unifi-cloud-key mac-address '78:8a:20:7e:40:3f'
set service dhcp-server shared-network-name LAN subnet 192.168.1.0/24 static-mapping dns1-rpi ip-address '192.168.1.3'
set service dhcp-server shared-network-name LAN subnet 192.168.1.0/24 static-mapping dns1-rpi mac-address 'b8:27:eb:56:ca:9e'
set service dhcp-server shared-network-name LAN subnet 192.168.1.0/24 static-mapping usw-pro-24 ip-address '192.168.1.50'
set service dhcp-server shared-network-name LAN subnet 192.168.1.0/24 static-mapping usw-pro-24 mac-address '24:5a:4c:86:9a:64'
set service dhcp-server shared-network-name LAN subnet 192.168.1.0/24 static-mapping usw-24-poe ip-address '192.168.1.51'
set service dhcp-server shared-network-name LAN subnet 192.168.1.0/24 static-mapping usw-24-poe mac-address '78:8a:20:0e:34:1d'
set service dhcp-server shared-network-name LAN subnet 192.168.1.0/24 static-mapping usw-flex-office ip-address '192.168.1.52'
set service dhcp-server shared-network-name LAN subnet 192.168.1.0/24 static-mapping usw-flex-office mac-address '24:5a:4c:18:c7:89'
set service dhcp-server shared-network-name LAN subnet 192.168.1.0/24 static-mapping usw-8-living-room ip-address '192.168.1.53'
set service dhcp-server shared-network-name LAN subnet 192.168.1.0/24 static-mapping usw-8-living-room mac-address '18:e8:29:ef:1e:a0'
set service dhcp-server shared-network-name LAN subnet 192.168.1.0/24 static-mapping uap-ac-lite-closet ip-address '192.168.1.55'
set service dhcp-server shared-network-name LAN subnet 192.168.1.0/24 static-mapping uap-ac-lite-closet mac-address 'f0:9f:c2:c8:06:fe'
set service dhcp-server shared-network-name LAN subnet 192.168.1.0/24 static-mapping uap-ac-lite-office ip-address '192.168.1.56'
set service dhcp-server shared-network-name LAN subnet 192.168.1.0/24 static-mapping uap-ac-lite-office mac-address 'f0:9f:c2:f6:d3:7f'
set service dhcp-server shared-network-name LAN subnet 192.168.1.0/24 static-mapping u6-lite-living-room ip-address '192.168.1.57'
set service dhcp-server shared-network-name LAN subnet 192.168.1.0/24 static-mapping u6-lite-living-room mac-address 'f4:92:bf:aa:e6:78'
set service dhcp-server shared-network-name LAN subnet 192.168.1.0/24 static-mapping uap-iw-hd-bedroom  ip-address '192.168.1.58'
set service dhcp-server shared-network-name LAN subnet 192.168.1.0/24 static-mapping uap-iw-hd-bedroom mac-address '68:d7:9a:68:8d:c3'
set service dhcp-server shared-network-name LAN subnet 192.168.1.0/24 static-mapping mikrotik-crs309-1g-8s-in ip-address '192.168.1.59'
set service dhcp-server shared-network-name LAN subnet 192.168.1.0/24 static-mapping mikrotik-crs309-1g-8s-in mac-address 'c4:ad:34:05:6d:a5'
set service dhcp-server shared-network-name LAN subnet 192.168.1.0/24 static-mapping rorty ip-address '192.168.1.82'
set service dhcp-server shared-network-name LAN subnet 192.168.1.0/24 static-mapping rorty mac-address '1c:83:41:30:a8:bd'
set service dhcp-server shared-network-name LAN subnet 192.168.1.0/24 static-mapping aquinas ip-address '192.168.1.243'
set service dhcp-server shared-network-name LAN subnet 192.168.1.0/24 static-mapping aquinas mac-address 'a4:4c:c8:a9:3c:bf'
set service dhcp-server shared-network-name LAN subnet 192.168.1.0/24 static-mapping quine-2-5g ip-address '192.168.1.83'
set service dhcp-server shared-network-name LAN subnet 192.168.1.0/24 static-mapping quine-2-5g mac-address 'c8:7f:54:6f:77:02'
##set service dhcp-server shared-network-name LAN subnet 192.168.1.0/24 static-mapping mill-lan ip-address '192.168.1.13'
##set service dhcp-server shared-network-name LAN subnet 192.168.1.0/24 static-mapping mill-lan mac-address ''
##set service dhcp-server shared-network-name LAN subnet 192.168.1.0/24 static-mapping witt-lan ip-address '192.168.1.11'
##set service dhcp-server shared-network-name LAN subnet 192.168.1.0/24 static-mapping witt-lan mac-address ''
##set service dhcp-server shared-network-name LAN subnet 192.168.1.0/24 static-mapping debord-lan ip-address '192.168.1.16'
##set service dhcp-server shared-network-name LAN subnet 192.168.1.0/24 static-mapping debord-lan mac-address ''
##set service dhcp-server shared-network-name LAN subnet 192.168.1.0/24 static-mapping peirce-lan ip-address '192.168.1.21'
##set service dhcp-server shared-network-name LAN subnet 192.168.1.0/24 static-mapping peirce-lan mac-address ''
##set service dhcp-server shared-network-name LAN subnet 192.168.1.0/24 static-mapping ibnsina-lan ip-address '192.168.1.16'
##set service dhcp-server shared-network-name LAN subnet 192.168.1.0/24 static-mapping ibnsina-lan mac-address ''


# Primary VLAN
set service dhcp-server shared-network-name PRIMARY authoritative
set service dhcp-server shared-network-name PRIMARY ping-check
set service dhcp-server shared-network-name PRIMARY subnet 10.9.4.0/22 default-router '10.9.4.1'
set service dhcp-server shared-network-name PRIMARY subnet 10.9.4.0/22 domain-name 'socozy.casa'
set service dhcp-server shared-network-name PRIMARY subnet 10.9.4.0/22 lease '86400'
set service dhcp-server shared-network-name PRIMARY subnet 10.9.4.0/22 name-server '10.9.4.4'
set service dhcp-server shared-network-name PRIMARY subnet 10.9.4.0/22 name-server '192.168.1.3'
set service dhcp-server shared-network-name PRIMARY subnet 10.9.4.0/22 range 0 start '10.9.6.10'
set service dhcp-server shared-network-name PRIMARY subnet 10.9.4.0/22 range 0 stop '10.9.7.254'


set service dhcp-server shared-network-name PRIMARY subnet 10.9.4.0/22 static-mapping dns2-rpi ip-address '10.9.4.4'
set service dhcp-server shared-network-name PRIMARY subnet 10.9.4.0/22 static-mapping dns2-rpi mac-address 'b8:27:eb:53:bc:5e'
set service dhcp-server shared-network-name PRIMARY subnet 10.9.4.0/22 static-mapping mali-prim ip-address '10.9.4.10'
set service dhcp-server shared-network-name PRIMARY subnet 10.9.4.0/22 static-mapping mali-prim mac-address '58:9c:fc:10:02:7b'
set service dhcp-server shared-network-name PRIMARY subnet 10.9.4.0/22 static-mapping zigbee2mqtt0 ip-address '10.9.4.11'
set service dhcp-server shared-network-name PRIMARY subnet 10.9.4.0/22 static-mapping zigbee2mqtt0 mac-address 'e4:5f:01:84:27:95'
set service dhcp-server shared-network-name PRIMARY subnet 10.9.4.0/22 static-mapping nad-t778-living-room ip-address '10.9.4.12'
set service dhcp-server shared-network-name PRIMARY subnet 10.9.4.0/22 static-mapping nad-t778-living-room mac-address '90:56:82:4f:29:b2'
set service dhcp-server shared-network-name PRIMARY subnet 10.9.4.0/22 static-mapping bluesound-node-bedroom ip-address '10.9.4.13'
set service dhcp-server shared-network-name PRIMARY subnet 10.9.4.0/22 static-mapping bluesound-node-bedroom mac-address '90:56:82:40:b8:16'
set service dhcp-server shared-network-name PRIMARY subnet 10.9.4.0/22 static-mapping nvidia-shield ip-address '10.9.4.14'
set service dhcp-server shared-network-name PRIMARY subnet 10.9.4.0/22 static-mapping nvidia-shield mac-address '00:04:4b:ab:f1:17'
set service dhcp-server shared-network-name PRIMARY subnet 10.9.4.0/22 static-mapping bluesound-ims-4 ip-address '10.9.4.15'
set service dhcp-server shared-network-name PRIMARY subnet 10.9.4.0/22 static-mapping bluesound-ims-4 mac-address '90:56:82:17:24:88'
set service dhcp-server shared-network-name PRIMARY subnet 10.9.4.0/22 static-mapping bluesound-flex-speaker ip-address '10.9.6.16'
set service dhcp-server shared-network-name PRIMARY subnet 10.9.4.0/22 static-mapping bluesound-flex-speaker mac-address '48:d8:90:e4:f0:c5'
set service dhcp-server shared-network-name PRIMARY subnet 10.9.4.0/22 static-mapping rock ip-address '10.9.6.23'
set service dhcp-server shared-network-name PRIMARY subnet 10.9.4.0/22 static-mapping rock mac-address '96:84:68:47:64:06'
set service dhcp-server shared-network-name PRIMARY subnet 10.9.4.0/22 static-mapping homeassistant ip-address '10.9.4.25'
set service dhcp-server shared-network-name PRIMARY subnet 10.9.4.0/22 static-mapping homeassistant mac-address '3e:6c:37:c2:23:c1'
set service dhcp-server shared-network-name PRIMARY subnet 10.9.4.0/22 static-mapping lsx-speaker ip-address '10.9.6.28'
set service dhcp-server shared-network-name PRIMARY subnet 10.9.4.0/22 static-mapping lsx-speaker mac-address '84:17:15:02:a0:15'
set service dhcp-server shared-network-name PRIMARY subnet 10.9.4.0/22 static-mapping kindle-oasis ip-address '10.9.6.95'
set service dhcp-server shared-network-name PRIMARY subnet 10.9.4.0/22 static-mapping kindle-oasis mac-address 'FC:A1:83:B2:20:33'
set service dhcp-server shared-network-name PRIMARY subnet 10.9.4.0/22 static-mapping kobo-libra-h20 ip-address '10.9.6.96'
set service dhcp-server shared-network-name PRIMARY subnet 10.9.4.0/22 static-mapping kobo-libra-h20 mac-address '58:b0:d4:63:cc:5b'
set service dhcp-server shared-network-name PRIMARY subnet 10.9.4.0/22 static-mapping pixel-6a ip-address '10.9.6.70'
set service dhcp-server shared-network-name PRIMARY subnet 10.9.4.0/22 static-mapping pixel-6a mac-address '82:0b:5a:5d:57:cc'
set service dhcp-server shared-network-name PRIMARY subnet 10.9.4.0/22 static-mapping galaxy-s21 ip-address '10.9.6.14'
set service dhcp-server shared-network-name PRIMARY subnet 10.9.4.0/22 static-mapping galaxy-s21 mac-address 'c6:1c:79:b2:75:8b'
set service dhcp-server shared-network-name PRIMARY subnet 10.9.4.0/22 static-mapping ipad-personal ip-address '10.9.6.15'
set service dhcp-server shared-network-name PRIMARY subnet 10.9.4.0/22 static-mapping ipad-personal mac-address '32:39:a9:ab:34:38'


#container0
#net1
#bridge vmbr0 tag4
# 10.9.4.30
# CA:00:E9:D2:10:3D

# mgmt VLAN
set service dhcp-server shared-network-name MGMT authoritative
set service dhcp-server shared-network-name MGMT ping-check
set service dhcp-server shared-network-name MGMT subnet 10.9.8.0/23 default-router '10.9.8.1'
set service dhcp-server shared-network-name MGMT subnet 10.9.8.0/23 domain-name 'socozy.casa'
set service dhcp-server shared-network-name MGMT subnet 10.9.8.0/23 lease '86400'
set service dhcp-server shared-network-name MGMT subnet 10.9.8.0/23 name-server '10.9.4.4'
set service dhcp-server shared-network-name MGMT subnet 10.9.8.0/23 name-server '192.168.1.3'
set service dhcp-server shared-network-name MGMT subnet 10.9.8.0/23 range 0 start '10.9.9.200'
set service dhcp-server shared-network-name MGMT subnet 10.9.8.0/23 range 0 stop '10.9.9.254'

set service dhcp-server shared-network-name MGMT subnet 10.9.8.0/23 static-mapping mali-ipmi ip-address '10.9.8.2'
set service dhcp-server shared-network-name MGMT subnet 10.9.8.0/23 static-mapping mali-ipmi mac-address '00:25:90:bb:79:e9'
#set service dhcp-server shared-network-name MGMT subnet 10.9.8.0/23 static-mapping mali-mgmt ip-address '10.9.8.3'
#set service dhcp-server shared-network-name MGMT subnet 10.9.8.0/23 static-mapping mali-mgmt mac-address '58:9c:fc:10:ff:e6'
set service dhcp-server shared-network-name MGMT subnet 10.9.8.0/23 static-mapping witt-mgmt ip-address '10.9.8.11'
set service dhcp-server shared-network-name MGMT subnet 10.9.8.0/23 static-mapping witt-mgmt mac-address 'f2:50:f3:df:1b:d4'
set service dhcp-server shared-network-name MGMT subnet 10.9.8.0/23 static-mapping mill-mgmt ip-address '10.9.8.13'
set service dhcp-server shared-network-name MGMT subnet 10.9.8.0/23 static-mapping mill-mgmt mac-address 'da:10:5b:71:cc:5b'
set service dhcp-server shared-network-name MGMT subnet 10.9.8.0/23 static-mapping ibnsina-mgmt ip-address '10.9.8.16'
set service dhcp-server shared-network-name MGMT subnet 10.9.8.0/23 static-mapping ibnsina-mgmt mac-address '5a:28:28:1b:a1:ff'
set service dhcp-server shared-network-name MGMT subnet 10.9.8.0/23 static-mapping peirce-mgmt ip-address '10.9.8.18'
set service dhcp-server shared-network-name MGMT subnet 10.9.8.0/23 static-mapping peirce-mgmt mac-address 'a2:87:87:15:2c:f3'
set service dhcp-server shared-network-name MGMT subnet 10.9.8.0/23 static-mapping debord-mgmt ip-address '10.9.8.21'
set service dhcp-server shared-network-name MGMT subnet 10.9.8.0/23 static-mapping debord-mgmt mac-address 'ca:f3:05:c0:bc:6a'
set service dhcp-server shared-network-name MGMT subnet 10.9.8.0/23 static-mapping pikvm ip-address '10.9.9.11'
set service dhcp-server shared-network-name MGMT subnet 10.9.8.0/23 static-mapping pikvm mac-address 'dc:a6:32:b4:2b:5d'


# data VLAN
set service dhcp-server shared-network-name DATA authoritative
set service dhcp-server shared-network-name DATA ping-check
set service dhcp-server shared-network-name DATA subnet 10.9.10.0/23 default-router '10.9.10.1'
set service dhcp-server shared-network-name DATA subnet 10.9.10.0/23 domain-name 'socozy.casa'
set service dhcp-server shared-network-name DATA subnet 10.9.10.0/23 lease '86400'
set service dhcp-server shared-network-name DATA subnet 10.9.10.0/23 name-server '10.9.4.4'
set service dhcp-server shared-network-name DATA subnet 10.9.10.0/23 name-server '192.168.1.3'
set service dhcp-server shared-network-name DATA subnet 10.9.10.0/23 range 0 start '10.9.11.200'
set service dhcp-server shared-network-name DATA subnet 10.9.10.0/23 range 0 stop '10.9.11.254'

set service dhcp-server shared-network-name DATA subnet 10.9.10.0/23 static-mapping quine-10g ip-address '10.9.10.5'
set service dhcp-server shared-network-name DATA subnet 10.9.10.0/23 static-mapping quine-10g mac-address 'c8:7f:54:6f:71:3f'
#set service dhcp-server shared-network-name DATA subnet 10.9.10.0/23 static-mapping witt-data ip-address '10.9.10.11'
#set service dhcp-server shared-network-name DATA subnet 10.9.10.0/23 static-mapping witt-data mac-address ''
#set service dhcp-server shared-network-name DATA subnet 10.9.10.0/23 static-mapping mali-data ip-address '10.9.10.10'
#set service dhcp-server shared-network-name DATA subnet 10.9.10.0/23 static-mapping mali-data mac-address '58:9c:fc:10:ff:eb'
#set service dhcp-server shared-network-name DATA subnet 10.9.10.0/23 static-mapping mill-data ip-address '10.9.10.13'
#set service dhcp-server shared-network-name DATA subnet 10.9.10.0/23 static-mapping mill-data mac-address '32:c9:fe:64:39:80'
#set service dhcp-server shared-network-name DATA subnet 10.9.10.0/23 static-mapping ibnsina-data ip-address '10.9.10.16'
#set service dhcp-server shared-network-name DATA subnet 10.9.10.0/23 static-mapping ibnsina-data mac-address '46:8c:b9:1d:2e:9e'
#set service dhcp-server shared-network-name DATA subnet 10.9.10.0/23 static-mapping peirce-data ip-address '10.9.10.18'
#set service dhcp-server shared-network-name DATA subnet 10.9.10.0/23 static-mapping peirce-data mac-address '5a:af:63:48:9e:07'
#set service dhcp-server shared-network-name DATA subnet 10.9.10.0/23 static-mapping debord-data ip-address '10.9.10.21'
#set service dhcp-server shared-network-name DATA subnet 10.9.10.0/23 static-mapping debord-data mac-address 'ee:e4:88:06:c5:82'
