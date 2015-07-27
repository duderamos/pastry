require 'factory_girl'

FactoryGirl.define do
  factory :host do
    hostname "localhost"
    macaddress "22:33:44:55:66:77"
    ipaddress "192.168.1.1"
  end
end
