firewall_rule 'allow world to openvpn' do
  port 1149
  source '0.0.0.0/0'
  action [:allow]
end

