class UsersController < ApplicationController
    def show
        user=User.find(params[:id])
        @like_num= user.like_num
        @nickname= user.nickname
        @tweets= user.tweets.page(params[:page]).per(5).order("created_at DESC")
        if user.image.url
            @image=user.image.url
        else
            @image='ninjawanko.jpg'
        end
        @users=User.where(like_num: user.like_num)
    end
end
