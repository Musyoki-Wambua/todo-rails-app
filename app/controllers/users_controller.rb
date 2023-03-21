class UsersController < ApplicationController

    def index 
        render json: {data: User.all}
    end

    def create 
        user = User.create(user_params)
        render json: { data: user, message: 'User created successfully'}
    end

    def update 
        id= params[:id]
        user = User.find(id)
        user.update(user_params)
        render json: {message: "User updated successfully"}
    end

    #TODO: delete

    #TODO: show indivindual user 

    private

    def user_params 
        params.permit(:email, :password)
    end
end
