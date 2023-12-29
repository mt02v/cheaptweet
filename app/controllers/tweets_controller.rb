class TweetsController < ApplicationController
  def index
  end
  def new
    @tweet = Tweet.new
  end
  
  def create
    @tweet = Tweet.new(tweet_params)
    if @tweet.save
      redirect_tp root_path
    else
      render action: :new
    end
  end
  private
  def tweet_params
    params.require(:tweet).permit(:text).merge(user_id: current_user.id)
  end
end