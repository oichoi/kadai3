class ApplicationController < ActionController::Base
# このアクションを追加
  def after_sign_in_path_for(resource)
    "/user/#{current_user.id}"
  end
end
