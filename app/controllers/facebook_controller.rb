class FacebookController < ApplicationController
  def index(id=0)
  @users = User.all
  end
  def user(id)
  end
end
