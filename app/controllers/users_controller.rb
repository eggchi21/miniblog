class UsersController < ApplicationController
    def show
        user=User.find(params[:id])
        @like_num= user.like_num
        @nickname= user.nickname
        @tweets= user.tweets.page(params[:page]).per(5).order("created_at DESC")
        @users=User.where(like_num: user.like_num)
    end
end
