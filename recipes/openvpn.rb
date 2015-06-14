firewall_rule 'allow world to openvpn' do
  port 1194
  protocol :udp
  source '0.0.0.0/0'
  action [:allow]
end

firewall_rule 'allow vpn clients to access world' do
  direction in: 'tun0', out: 'eth0'
  action [:allow]
end
