---

admins:
  - raoul
  - l3d
  - mart

hostname: 'gw02.ffbsee.net'

ipv4_mesh_address: '10.11.160.102'

ipv6_suffix: ':1:2'
ipv6_radv_suffix: ':1:2'
ipv6_address: '{{ ipv6_prefix }}{{ ipv6_suffix }}'
mesh_ipv6_address: '{{ ipv6_address }}'
mesh_ipv6_extra_addr: ''
ipv6_radv_address: '{{ ipv6_prefix }}{{ ipv6_radv_suffix }}'
ipv6_radv_prefix: '{{ ipv6_prefix }}:/64'

wan_ipv6_network: '2a02:168:4638:f1::/64'
wan_ipv6_ip: '2a02:168:4638:f0::10'
wan_base_interface: 'enp1s0f0'
wan_vlan_id: '240'
wan_interface: '{{ wan_base_interface }}{% if wan_vlan_id != "" %}.{{ wan_vlan_id }}{% endif %}'
wan_ipv4_ip: '10.0.240.10' 

fastd_secret_key: ''


run_mesh: 'true'
run_gateway: 'true'
run_webserver: 'true'
run_icvpn: 'false'
run_map: 'true'
run_stats: 'false'
da_laueft_ein_dhcp_relay: 'false'

fastd_peer_limit: ''
fastd_vpn_backbone_configs:
  - vpn4
  - gw01
  - gw03

ipv6_uplink_announcen: 'true'
radv_AdvDefaultPreference: 'medium'

debian: '9'
freifunk_karte_api: 'false'

nodelist: 'true'
