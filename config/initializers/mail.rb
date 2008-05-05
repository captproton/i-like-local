# Email settings
ActionMailer::Base.delivery_method = :smtp  # or :sendmail
ActionMailer::Base.smtp_settings = {
    :address => “mail.ilikeutah.com”,
    :port => 25,
    :domain => “ilikeutah.com”,
    :authentication => :login,
    :user_name => “captproton@ilikeutah.com”,
    :password => “melorbode”
}