firewall_rule 'allow world to openvpn' do
  port 1194
  protocol :udp
  source '0.0.0.0/0'
  action [:allow]
end

