class UsersController < ApplicationController
    def show
        user=User.find(params[:id])
        @nickname= user.nickname
        @training= user.training_i18n
        @tweets= user.tweets.page(params[:page]).per(5).order("created_at DESC")
        if user.image.url
            @image=user.image.url
        else
            @image='ninjawanko.jpg'
        end
        @users=User.where(training: user.training)
    end
    def edit
      @user=User.find(params[:id])
    end
    def update
      if current_user.update(user_params)
        redirect_to root_path
      else
        render :edit
      end
    end
    private
    def user_params
      binding.pry
      params.require(:user).permit(:nickname,:image,:training)
    end
  end
