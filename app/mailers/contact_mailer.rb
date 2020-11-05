class ContactMailer < ApplicationMailer
  def new_contact
    direct_contact
  end

  def teamup_180
    direct_contact
    # attachments.inline['teamup_180.jpg'] = File.read('/path/to/teamup_180.jpg')
  end

  def teamup_360
    direct_contact
    # attachments.inline['teamup_360.jpg'] = File.read('/path/to/teamup_360.jpg')
  end

  def teamup_teams
    direct_contact
    # attachments.inline['teamup_teams.jpg'] = File.read('/path/to/teamup_teams.jpg')
  end

  private

  def direct_contact
    @contact = params[:contact] # Instance variable => available in view
    mail(to: @contact.email, subject: "Thank you #{@contact.name} for your contact")
    # This will render a view in `app/views/user_mailer`!
  end
end
