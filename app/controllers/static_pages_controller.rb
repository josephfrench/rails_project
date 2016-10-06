class StaticPagesController < ApplicationController
  def landing_page
  	@products = Product.limit(3)
 	@numbers = Product.ids
  	#@featured_product = Product.last
  end
end
