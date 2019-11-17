class UsersController < ApplicationController
    before_action :signed_in_user, only: [:edit, :update]
    before_action :correct_user, only: [:edit, :update]

    def index
        @users = User.all
    end

    def show
        @user = User.find(params[:id])
    end

    def new
        @user = User.new
    end

    def edit
    end

    def create
        @user = User.new(user_params)
        if
end
