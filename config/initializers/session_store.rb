if Rails.env == "production"
  Rails.application.config.session_store :cookie_store, key: "_Book-an-appointment", domain: "https//link_to_production_app.com"
else
  Rails.application.config.session_store :cookie_store, key: "_Book-an-appointment"
end
