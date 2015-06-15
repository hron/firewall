firewall_rule 'allow world to openvpn' do
  port 1194
  protocol :udp
  source '0.0.0.0/0'
  action [:allow]
end

# ufw route allow in on tun0 out on eth0
# firewall_rule 'allow vpn clients to access world' do
#   direction in: 'tun0', out: 'eth0'
#   action [:allow]
# end
shell_out!('ufw route allow in on tun0 out on eth0')

firewall_rule 'allow sisyphus ssh' do
  port 8022
  protocol :tcp
  source '0.0.0.0/0'
  action [:allow]
end

template '/etc/openvpn/server.up.d/forwarding.sh' do
  source 'forwarding.sh.erb'
  owner 'root'
  group 'root'
  mode  '0755'
  notifies :restart, 'service[openvpn]'
end

