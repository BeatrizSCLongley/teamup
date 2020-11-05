# Preview all emails at http://localhost:3000/rails/mailers/contact_mailer
class ContactMailerPreview < ActionMailer::Preview
  def new_contact
    contact = Contact.first
    ContactMailer.with(contact: contact).new_contact
  end

  def teamup_180
    contact = Contact.first
    ContactMailer.with(contact: contact).teamup_180
  end

  def teamup_360
    contact = Contact.last
    ContactMailer.with(contact: contact).teamup_360
  end

  def teamup_teams
    contact = Contact.first
    ContactMailer.with(contact: contact).teamup_teams
  end
end
