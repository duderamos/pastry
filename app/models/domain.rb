class Domain < ActiveRecord::Base
  has_many :hosts
  validates :domain, presence: true
end
