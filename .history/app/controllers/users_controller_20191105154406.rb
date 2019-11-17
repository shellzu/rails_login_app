class UsersController < ApplicationController
    before_action :signed_in_user, only: [:edit, :update]
    before_action :corrent_user
end
