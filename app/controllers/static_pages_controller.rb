class StaticPagesController < ApplicationController
  def featured
  	@products = Product.limit(3)
 	  @numbers = Product.ids
  	#@featured_product = Product.last
  end
  def thank_you
    @name = params[:name]
    @email = params[:email]
    @message = params[:message]
    UserMailer.contact_form(@email, @name, @message).deliver_now
    #ActionMailer::Base.mail(:from => @email,
    #    :to => 'joe.p.french@gmail.com',
    #    :subject => "A new contact form message from #{@name}",
    #    :body => @message).deliver_now
  end
end
