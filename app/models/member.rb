class Member < ActiveRecord::Base
  attr_accessible :current_location, :date_of_birth, :email, :gender, :password, :phone, :qq, :realname, :resume_url
end
