class News < ActiveRecord::Base
  attr_accessible :author, :content, :image_url_1, :image_url_2, :title
end
