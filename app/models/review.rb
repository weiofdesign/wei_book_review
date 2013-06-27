class Review < ActiveRecord::Base
  attr_accessible :book_id, :content, :user_id

belongs_to :user
belongs_to :book 

validates :content, :presence => true 
  
end
