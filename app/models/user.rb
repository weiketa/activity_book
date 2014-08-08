class User < ActiveRecord::Base
  validates :login, :presence => true, :uniqueness => {:case_sensitive => false}
  validates :password, confirmation: true
  validates :password_confirmation, presence: true
  validates :question_of_password, presence: true
  validates :answer_of_password, presence: true

  #attr_accessor :login,:password,:password_confirmation,:question_of_password,:answer_of_password
end
