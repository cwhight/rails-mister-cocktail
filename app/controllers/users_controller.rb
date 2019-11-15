class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def cocktails
    @user = User.find(params[:id])
    @cocktails = @user.cocktails
  end
end
