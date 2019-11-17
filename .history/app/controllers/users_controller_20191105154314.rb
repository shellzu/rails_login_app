class UsersController < ApplicationController
    before_action :signed_in_user
end
