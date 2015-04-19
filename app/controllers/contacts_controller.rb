# Contacts Controller
class ContactsController < InheritedResources::Base
  private

    def contact_params
      params.require(:contact).permit(:content, :phone, :email, :lat, :lng)
    end
end
