class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  protected

  #The path used after sign up.
  def after_sign_up_path_for(resource)
    movies_path    
  end

  #The path used after sign in.
  def after_sign_in_path_for(resource)
    movies_path
  end
end
