class UsersController < ApplicationController
    def show
        user=User.find(params[:id])
        @kind= user.kind
        @nickname= user.nickname
        @tweets= user.tweets.page(params[:page]).per(5).order("created_at DESC")
        if user.image.url
            @image=user.image.url
        else
            @image='ninjawanko.jpg'
        end
        @users=User.where(kind: user.kind)
    end
end
