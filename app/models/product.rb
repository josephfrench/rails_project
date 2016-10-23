class Product < ApplicationRecord
	has_many :orders
  has_many :comments
  def highest_rating_comment
    comments.rating_desc.pluck(:body).first
  end
  def lowest_rating_comment
    comments.rating_desc.pluck(:body).last
  end
end

