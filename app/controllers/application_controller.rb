class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :authenticate_user!
  before_filter :vary_accept

  def after_sign_in_path_for(resource)
    user_recipes_path(resource)
  end

  def vary_accept
    response.headers["Vary"]= "Accept"
  end
end
