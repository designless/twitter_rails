class TweetsController < ApplicationController
  def create
    @tweet = current_user.tweets.build(tweet_params)
    if @tweet.save
      flash[:success] = "Tweeted"
      redirect_to root_path
    else
      flash[:success] = "Tweet failed"
      redirect_to root_path
    end
  end

  

  private

    def tweet_params
      params.require(:tweet).permit(:content)
    end
end

