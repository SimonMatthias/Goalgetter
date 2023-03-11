class QuarterlygoalsController < ApplicationController
  before_action :set_quarterlygoal, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: :index

  def index
    @quarterlygoals = Quarterlygoal.all
  end

  def show
    @quarterlygoal = Quarterlygoal.find(params[:id])
  end

  def new
    @quarterlygoal = Quarterlygoal.new
  end

  def create
    @user = current_user
    @quarterlygoal = Quarterlygoal.new(quarterlygoal_params)
    @quarterlygoal.user = @user
    if @quarterlygoal.save
      # redirect_to yearlygoal_path(@ygoal) unclear about route
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    @quarterlygoal.update(quarterlygoal_params)
    redirect_to dashboard_path
  end

  def destroy
    @quarterlygoal.destroy
    redirect_to dashboard_path
  end

  private

  def set_quarterlygoal
    @quarterlygoal = Quarterlygoal.find(params[:id])
  end

  def quarterlygoal_params
    params.require(:quarterlygoal).permit(:title, :description, :done)
  end
end
