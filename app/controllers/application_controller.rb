class ApplicationController < ActionController::Base
  
  helper :all
  protect_from_forgery
  
  def authentication_succeeded
    flash[:notice] = "You have logged in successfully."
    redirect_to root_path
  end
  
  def access_denied
    respond_to do |format|
      format.html {
        store_location
        redirect_to login_path
      }
      format.js{ render :js => "top.location.href = '/login';" }
    end
  end
  
end
