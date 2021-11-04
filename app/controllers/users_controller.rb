class UsersController < ApplicationController

    skip_before_action :verify_authenticity_token

    # GET all users
    def index
        users = User.all
        render json: users
    end
end
