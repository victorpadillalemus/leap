class UsersController < ApplicationController
  def show
    authorize current_user
    @user = current_user
  end
end
