class UsersController < ApplicationController
  before_filter :authenticate_user!

  def index
    @users = User.all
  end

  def show
    @user = current_user
    @tweets = @user.tweets.paginate(page: params[:page])
  end
end

