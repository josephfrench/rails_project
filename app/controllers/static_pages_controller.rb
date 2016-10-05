class StaticPagesController < ApplicationController
  def landing_page
  	@number = Product.id-1
  	@products = Product.limit(3)
  	#@featured_product = Product.last
  end
end
