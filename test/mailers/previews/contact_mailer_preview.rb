# Preview all emails at http://localhost:3000/rails/mailers/contact_mailer
class ContactMailerPreview < ActionMailer::Preview
  def new_contact
    contact = Contact.first
    ContactMailer.with(contact: contact).new_contact
  end
end
