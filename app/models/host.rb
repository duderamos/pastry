class Host < ActiveRecord::Base
  validates :hostname, presence: true
  validates :macaddress, presence: true, length: { is: 17 }
  validates :ipaddress, presence: true, length: { maximum: 15 }
end
