ActionMailer::Base.smtp_settings = {
  address: "smtp.gmail.com",
  port: 587,
  domain: "gmail.com",
  user_name: "juvecadiz@gmail.com",
  password: "juve1986",
  authentication: :plain,
  enable_starttls_auto: true
}
