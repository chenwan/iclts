class Comment < ActiveRecord::Base
  attr_accessible :content, :email, :name
end
