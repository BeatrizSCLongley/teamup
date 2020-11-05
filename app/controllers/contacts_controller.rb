class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)

    if @contact.save && verify_recaptcha(model: @contact)
      message = ContactMailer.with(contact: @contact).new_contact
      message.deliver_now
      redirect_to contact_path, notice: "We have received your contact form and will be in touch soon!"
      # flash[:notice] = "We have received your contact form and will be in touch soon!"
    else
      render :new, notice: "There was an error sending your contact form. Please try again."
    end
  end

  # respond_to do |format|
  #   if verify_recaptcha(model: @message) && @message.save
  #     format.html { redirect_to @message, notice: 'Message was successfully created.' }
  #     format.json { render :show, status: :created, location: @message }
  #   else
  #     format.html { render :new }
  #     format.json { render json: @message.errors, status: :unprocessable_entity }
  #   end
  # end

  private

  def contact_params
    params.require(:contact).permit(:name, :email, :title)
  end
end
