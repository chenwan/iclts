class Member < ActiveRecord::Base
  validates :email, :password, :realname, :gender, :date_of_birth, :phone, :current_location, :presence => true
  
  GENDER_TYPES = ["Male", "Female"]
  validates :gender, :inclusion => GENDER_TYPES
  
  attr_accessible :current_location, :date_of_birth, :email, :gender, :password, :phone, :qq, :realname, :resume_url
end
