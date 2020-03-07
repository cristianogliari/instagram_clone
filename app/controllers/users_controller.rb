class UsersController < ApplicationController
  include SuggestedUsers
  
  before_action :set_suggested_users, only: %i[show]
    
  def show
    user = User.find_by(username: params[:username])
    @posts = user.posts

    render "posts/index"
  end
end