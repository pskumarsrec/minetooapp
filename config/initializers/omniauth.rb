Rails.application.config.middleware.use OmniAuth::Builder do
  require "omniauth-facebook"
  require "omniauth-twitter"
  provider :twitter, 'so06n8aUsMqhhSOyduPg', 'mdvKJBI4jpNwBoty06AfwrKXn3vW2qk0UAIrSUWm9E', :strategy_class => OmniAuth::Strategies::Twitter
  provider :facebook, "447576751919118", "b7549e16e2ba34e2bd32e0a5353c8a8c", :strategy_class => OmniAuth::Strategies::Facebook
  #provider :facebook, '447576751919118', 'b7549e16e2ba34e2bd32e0a5353c8a8c'
end

