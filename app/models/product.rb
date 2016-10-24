class Product < ApplicationRecord
	has_many :orders
  has_many :comments
  validates :name, presence: true
  def highest_rating_comment
    comments.rating_desc.pluck(:body).first
  end
  def highest_rating
    comments.rating_desc.pluck(:rating).first
  end     
  def lowest_rating_comment
    comments.rating_asc.pluck(:body).first
  end
  def lowest_rating
    comments.rating_asc.pluck(:rating).first
  end   
  def average_rating
    comments.average(:rating).round(1)
  end
  
end

