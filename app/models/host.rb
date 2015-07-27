class Host < ActiveRecord::Base
  validates :hostname, presence: true, uniqueness: true
  validates :macaddress, presence: true, uniqueness: true, mac_address: true
  validates :ipaddress, presence: true, uniqueness: true, ip_address: true
end
