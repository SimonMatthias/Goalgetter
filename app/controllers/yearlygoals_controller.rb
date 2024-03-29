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
    @yearlygoal = Yearlygoal.new
  end

  def create
    selected_goal = params[:most_important]
    @fiveyeargoal = current_user.fiveyeargoals.first
    @yearlygoal = Yearlygoal.new
    if params[:yearly_goal_1].present?
      @yearlygoal = Yearlygoal.create(fiveyeargoal: @fiveyeargoal, title: params[:yearly_goal_1][:title], description: params[:yearly_goal_1][:description])
      redirect_to new_yearlygoal_quarterlygoal_path(@yearlygoal)
    elsif params[:yearly_goal_2].present?
      @yearlygoal = Yearlygoal.create(fiveyeargoal: @fiveyeargoal, title: params[:yearly_goal_2][:title], description: params[:yearly_goal_2][:description])
      redirect_to new_yearlygoal_quarterlygoal_path(@yearlygoal)
    elsif params[:yearly_goal_3].present?
      @yearlygoal = Yearlygoal.create(fiveyeargoal: @fiveyeargoal, title: params[:yearly_goal_3][:title], description: params[:yearly_goal_3][:description])
      redirect_to new_yearlygoal_quarterlygoal_path(@yearlygoal)
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
    params.require(:yearlygoal).permit(:title, :description, :done, )
  end
end
