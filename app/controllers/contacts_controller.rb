class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)

    if @contact.save
      # && verify_recaptcha(model: @contact)
      redirect_to root_path, notice: "Thanks, we have received your contact information. You will receive an email from hello@teamup.inc to your #{@contact.email} account"
      message = ContactMailer.with(contact: @contact).new_contact
      message.deliver_now
      # flash[:notice] = "We have received your contact form and will be in touch soon!"
      # if @contact.title == "General" || @contact.title == "neuro-selfie™" || @contact.title == "Workshop series"
      # elsif @contact.title == "teamup∞™ 180"
      #   message_two = ContactMailer.with(contact: @contact).teamup_180
      #   message_two.deliver_now
      # elsif @contact.title == "teamup∞™ 360"
      #   message_three = ContactMailer.with(contact: @contact).teamup_360
      #   message_three.deliver_now
      # elsif @contact.title == "teamup∞™ for teams"
      #   message_four = ContactMailer.with(contact: @contact).teamup_teams
      #   message_four.deliver_now
      # end
    else
      render :new, notice: "There was an error sending your contact form. Please try again."
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :email, :title, :message)
  end
end
