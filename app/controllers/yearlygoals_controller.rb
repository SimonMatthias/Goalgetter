class YearlygoalsController < ApplicationController
  before_action :set_yearlygoal, only: [:show, :edit, :update, :destroy]
  # skip_before_action :authenticate_user!, only: :index

  def index
    @yearlygoals = Yearlygoal.all
  end

  def show
    @yearlygoal = Yearlygoal.find(params[:id])
  end

  def new
    @yearygoal = Yearlygoal.new
  end

  def create
    @user = current_user
    @yearlygoal = Yearlygoal.new(yearlygoal_params)
    @yearlygoal.user = @user
    if @yearlygoal.save
      # redirect_to yearlygoal_path(@ygoal) unclear about route
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    @yearlygoal.update(yearlygoal_params)
    redirect_to dashboard_path
  end

  def destroy
    @yearlygoal.destroy
    redirect_to dashboard_path
  end

  private

  def set_yearlygoal
    @yearlygoal = Yearlygoal.find(params[:id])
  end

  def yearlygoal_params
    params.require(:yearlygoal).permit(:title, :description, :done)
  end
end
