class UserMailer < ApplicationMailer
  default from: "joe.p.french@gmail.com"

  def contact_form(email, name, message)
  @message = message
    mail(:from => email,
        :to => 'joe.p.french@gmail.com',
        :subject => "A new contact form message from #{name}")
  end

  def welcome(user)
    @appname = "DiscoverLocal"
    mail( :to => user.email,
          :subject => "Welcome to #{@appname}!")
  end

  def payment(user, product)
    @appname = "DiscoverLocal"
    mail( :to => user.email,
          :subject => "Order Successful!")
  end

end