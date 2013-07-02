class ContactsController < ApplicationController
  

  # GET /contacts/new
  # GET /contacts/new.json
  def new
    @contact = Contact.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @contact }
    end
  end

 

  # POST /contacts
  # POST /contacts.json
  def create
    @contact = Contact.new(params[:contact])
    if @contact.valid?
      ContactMailer.service_request(@contact).deliver
      redirect_to(root_path, :notice => "Thanks for getting in touch, we will get back to you soon")
    else
      render :new
    end
  end
 

  
end
