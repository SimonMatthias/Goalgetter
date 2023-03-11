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
    @yearlygoal = current_user.yearlygoals.find(params[:yearlygoal_id])
    @quarterlygoal = Quarterlygoal.new
  end

  def create
    @yearlygoal = current_user.yearlygoals.find(params[:yearlygoal_id])
    if @quarterlygoals = @yearlygoal.quarterlygoals.create(quarterlygoals_params[:quarterlygoals].values)
      redirect_to dashboard_path
    else
      render :new
    end
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

  def quarterlygoals_params
    params.permit(quarterlygoals: [:title, :description])
  end
end
