firewall_rule 'allow world to websser' do
  port 80
  protocol :tcp
  source '0.0.0.0/0'
  action [:allow]
end
