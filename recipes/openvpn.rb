firewall_rule 'allow world to openvpn' do
  port 1194
  source '0.0.0.0/0'
  action [:allow]
end

