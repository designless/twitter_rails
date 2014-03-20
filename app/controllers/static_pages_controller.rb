class StaticPagesController < ApplicationController
  def home
    @user = current_user if user_signed_in?
    @tweet = @user.tweets.build if user_signed_in?
    @tweets = Tweet.all
  end

  def help
  end
end
