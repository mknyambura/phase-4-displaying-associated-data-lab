class UsersController < ApplicationController
    def index
        render json: User.all
    end

    def show
        users = User.find_by(id: params[:id])
        render json: users, include: :items
    end
end
