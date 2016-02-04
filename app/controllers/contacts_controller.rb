class ContactsController < ApplicationController
   def new
    @contact = Contact.new
    @page = 'c'
    @content_id = true
  end

  def create
    @content_id = true
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      flash.now[:error] = nil
      flash.now[:notice] = 'Thank you for your message!'
    else
      flash.now[:error] = 'Cannot send message.'
      render :new
    end
  end

end
