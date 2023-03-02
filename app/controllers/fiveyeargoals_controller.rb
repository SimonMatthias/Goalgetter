class FiveyeargoalsController < ApplicationController
  before_action :set_fiveyeargoal, only: [:show, :edit, :update, :destroy]
  # skip_before_action :authenticate_user!, only: :index

  def index
    @fiveyeargoals = Fiveyeargoal.all
  end

  def show
    @fiveyeargoal = Fiveyeargoal.find(params[:id])
  end

  def new
    @fiveyeargoal = Fiveyeargoal.new
  end

  def create
    @user = current_user
    @fiveyeargoal = Fiveyeargoal.new(fiveyeargoal_params)
    @fiveyeargoal.user = @user
    if @fiveyeargoal.save
      # redirect_to yearlygoal_path(@ygoal) unclear about route
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    @fiveyeargoal.update(fiveyeargoal_params)
    redirect_to dashboard_path
  end

  def destroy
    @fiveyeargoal.destroy
    redirect_to dashboard_path
  end

  private

  def set_fiveyeargoal
    @fiveyeargoal = Fiveyeargoal.find(params[:id])
  end

  def fiveyeargoal_params
    params.require(:fiveyeargoal).permit(:title, :description, :category, :done)
  end
end
