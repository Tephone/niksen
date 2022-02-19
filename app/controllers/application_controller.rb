class ApplicationController < ActionController::Base
  def after_sign_in_path_for(resource)
    users_posts_path
  end

  def after_sign_up_path_for(resource)
    users_posts_path
  end
end
