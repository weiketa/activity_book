class Admin < ActiveRecord::Base
  attr_accessible :login,:password
  validates :login,:presence => true, :uniqueness => {:case_sensitive => false}
  validates :password,:presence => true
end
