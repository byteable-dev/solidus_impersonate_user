module Spree::SolidusImpersonateUser
  class ImpersonateController < Spree::BaseController
    ##
    # Impersonate
    #
    # Checks if user can manage users and then signs in as the user on the corrent store.
    # After signin redirects to root path
    def impersonate
      authorize! :manage, ::Spree::User

      user = Spree::User.find_by(id: params[:user_id])
      if user
        #session[:impersonator_id] = current_user.id
        sign_in(user, store: current_store)
        redirect_to root_path
      else
        redirect_to root_path
      end
    end
  end
end
