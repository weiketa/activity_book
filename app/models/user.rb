class User < ActiveRecord::Base
  validates :login, :presence => true, :uniqueness => {:case_sensitive => false}
  validates :password, confirmation: true
  validates :password_confirmation, presence: true
  validates :question_of_password, presence: true
  validates :answer_of_password, presence: true

  attr_accessor :login,:password,:question_of_password,:answer_of_password

  def password
    @password
  end

  def password=(pass)
    return unless password
    @password = pass
    generate_password(pass)
  end

  private
  def generate_password(pass)
    salt=Array.new(10){rand(1024).to_s(36)}.join
    self.salt,self.password = salt,Digest::MD5.hexdigest(pass+salt)
  end


end
