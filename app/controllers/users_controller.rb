# coding: utf-8

class UsersController < ApplicationController
    # ユーザ一覧
    def index
        @users = User.all
        render json: @users
    end

    # ユーザ登録ページ
    def new
 
    end

    # ユーザ登録
    def create

    end

    #　ユーザ削除
    def destroy

    end
end
