class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    if @contact.valid?
      # ContactMailer.new_contact(@contact).deliver
      redirect_to root_path, notice: "Mail was sent."
    else
      render :new, alert: "Mail was not sent, please review."
    end    
  end
end
