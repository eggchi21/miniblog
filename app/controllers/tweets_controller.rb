class TweetsController < ApplicationController
    before_action :move_to_index ,except: [:index ,:about]
    def about
    end
    def index
      @tweets = Tweet.includes(:user).page(params[:page]).per(5).order("created_at DESC")
    end

    def new
      @tweet=Tweet.new
    end

    def create
      Tweet.create(tweet_params)
      redirect_to root_path
    end

    def destroy
      tweet=Tweet.find(params[:id])
      tweet.destroy if tweet.user_id == current_user.id
      redirect_to root_path
    end

    def edit
      @tweet=Tweet.find(params[:id])
    end
    def update
      tweet = Tweet.find(params[:id])
      if tweet.user_id == current_user.id
        tweet.update(tweet_params)
        redirect_to root_path
      end
    end

    def show
      @tweet=Tweet.find(params[:id])
      user=@tweet.user
      @users=User.where.not(id: current_user.id).where(training: user.training)
      if user.image.url
        @image=user.image.url
      else
        @image='ninjawanko.jpg'
      end

    end

      private
      def tweet_params
        params.require(:tweet).permit(:kind,:weight,:rep,:set,:calorie,:text).merge(user_id: current_user.id)
      end

    def move_to_index
        redirect_to action: :index unless user_signed_in?
    end


end
