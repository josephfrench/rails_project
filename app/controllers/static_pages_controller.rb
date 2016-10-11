class StaticPagesController < ApplicationController
  def featured
  	@products = Product.limit(3)
 	  @numbers = Product.ids
  	#@featured_product = Product.last
  end
end
