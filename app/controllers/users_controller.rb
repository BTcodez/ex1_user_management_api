class UsersController < ApplicationController
  def index
  end

  def show
  end

  def create
    user = User.new(name: params[:name], email: params[:email])
    if user.save
      render json: user
    else
      render json: {error: "An error occured, please try again."}
    end
  end

  def update
  end

  def destroy
  end
end
