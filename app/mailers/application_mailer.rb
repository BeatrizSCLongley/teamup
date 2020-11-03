class ApplicationMailer < ActionMailer::Base
  # Change the email address to teamup's email account
  default from: 'beatrizsousacosta@gmail.com'
  layout 'mailer'
end
