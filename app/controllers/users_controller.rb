# coding: utf-8

class UsersController < ApplicationController
    # ユーザ一覧
    def index
        @users = User.all
        # render json: @users
    end

    # ユーザ登録ページ
    def new
        @user = User.new
    end

    # ユーザ登録
    def create
        @user = User.new(user_params)
        if @user.save
            flash[:success] = "登録が完了しました"
            redirect_to users_path
        else
            render 'new'
        end
    end

    #　ユーザ削除
    def destroy
        @user = User.find(params[:id]).destroy
        flash[:success] = "削除が完了しました"
        redirect_to users_path
    end

    private

    def user_params
      params.require(:user).permit(:name, :mail_address)
    end

end
