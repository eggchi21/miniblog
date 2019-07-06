class LikesController < ApplicationController

  before_action :authenticate_user!

  def create
    like=Like.where(user_id: current_user.id,tweet_id: params[:tweet_id])
    if like.length==0
      @like=Like.new(user_id: current_user.id,tweet_id: params[:tweet_id])
      @like.save
    end
  end

  def destroy
    like=Like.where(user_id: current_user.id,tweet_id: params[:tweet_id])
    if like.length==1
      @like = Like.find_by(user_id: current_user.id, tweet_id: params[:tweet_id])
      @like.destroy
    end
  end

end