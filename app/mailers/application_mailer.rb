class ApplicationMailer < ActionMailer::Base
  # Change the email address to teamup's email account
  default from: 'from@example.com'
  layout 'mailer'
end
