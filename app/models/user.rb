class User < ActiveRecord::Base
  # attr_accessor :login,:password,:password_confirmation,:token,:question_of_password,:answer_of_password
  attr_accessible :login,:password,:password_confirmation,:token,:question_of_password,:answer_of_password
  has_secure_password
  validates :login, :presence => true, :uniqueness => {:case_sensitive => false}
  validates :question_of_password, presence: true
  validates :answer_of_password, presence: true
  validates :password,length: {minimum: 6}






end
