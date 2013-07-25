class ExercisesController < ApplicationController
  def index
    if current_user
      @user = User.includes(:exercises).find(current_user.id)
    else 
      redirect_to root_path
    end
  end

  def chart
    @user = User.find(params[:user])
    @exercises = @user.exercises.where(activity: params[:exercise]).order(:completed)
  end

  def new
  end

  def create
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
