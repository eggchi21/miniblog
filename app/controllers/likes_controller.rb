class LikesController < ApplicationController
  # before_actionに「:authenticate_user」を追加してください
  before_action :authenticate_user!

  # createアクションを追加してください
  def create
    @like=Like.new(user_id: current_user.id,tweet_id: params[:tweet_id])
    @like.save
    redirect_to("/tweets/#{params[:tweet_id]}")
  end
  # destroyアクションを定義してください
  def destroy
    @like = Like.find_by(user_id: current_user.id, tweet_id: params[:tweet_id])
    @like.destroy
    redirect_to("/tweets/#{params[:tweet_id]}")
    end

end