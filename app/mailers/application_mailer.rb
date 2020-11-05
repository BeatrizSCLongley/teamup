class ApplicationMailer < ActionMailer::Base
  # Change the email address to teamup's email account
  default from: 'hello@teamup.inc'
  layout 'mailer'
end
