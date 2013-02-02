# encoding: utf-8

class Member < ActiveRecord::Base
  validates :email, :password, :realname, :gender, :date_of_birth, :phone, :current_location, :presence => true
  
  validates :email, :presence   => true,
                    :uniqueness => true,
                    :length     => { :within => 6..40 }
                    
  validates_length_of   :password, :within =>6..40,:message =>'$密码长度应在6~40之间',:allow_nil  => true
  
  GENDER_TYPES = ["Male", "Female"]
  
  validates :gender, :inclusion => GENDER_TYPES
  
  validates_numericality_of :phone , :message=>'$联系方式应全部由数字组成',:allow_nil  => true
  
  attr_accessible :current_location, :date_of_birth, :email, :gender, :password, :phone, :qq, :realname, :resume_url
  
  has_attached_file :resume_url
  
  validates_attachment_content_type :resume_url, :content_type => ['application/pdf','application/msword','application/vnd.openxmlformats-officedocument.wordprocessingml.document']
  
  validates_attachment_size :resume_url, :less_than=>5.megabyte
  
end
