class ApplicationController < ActionController::Base
  
  protect_from_forgery
  
  layout 'standard' #added by Amol to
  
  include SessionsHelper
  
  protected
  
  def login_as_admim_required
    if session[:user]
    	@user = session[:user]
    	if @user.admin == true
            return true
        end
    end
    #flash[:warning]='Please use maintenance login.'
    #session[:return_to]=request.request_uri
    redirect_to signin_path, :notice => "Please use maintenance login."
    return false 
  end



end
