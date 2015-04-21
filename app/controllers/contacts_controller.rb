# Contacts Controller
class ContactsController < ApplicationController
  def index
    @categories = Category.all
    @contacts = Contact.all
  end

  def contact_params
    params.require(:contact).permit(:content, :phone, :email, :lat, :lng)
  end
end
