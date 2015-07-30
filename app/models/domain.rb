class Domain < ActiveRecord::Base
  has_many :hosts
  validates :name, presence: true
end
