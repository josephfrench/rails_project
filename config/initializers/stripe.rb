if Rails.env.production?
  Rails.configuration.stripe = {
    :publishable_key => ENV['STRIPE_PUBLISHABLE_KEY'],
    :secret_key => ENV['STRIPE_SECRET_KEY']
  }
else
  Rails.configuration.stripe = {
    :publishable_key => 'pk_test_DO8ysPhjIGcCMNfbiHV52QnC',
    :secret_key => 'sk_test_KkS11dl4BHTBxRHVsv3P6Uz0'    
  }
end

Stripe.api_key = Rails.configuration.stripe[:secret_key]