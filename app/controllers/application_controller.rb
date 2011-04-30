class ApplicationController < ActionController::Base
  protect_from_forgery
  layout 'standard' #added by Amol to
  include SessionsHelper

end
