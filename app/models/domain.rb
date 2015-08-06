class Domain < ActiveRecord::Base
  has_many :hosts, :dependent => :delete_all
  validates :name, presence: true
end
