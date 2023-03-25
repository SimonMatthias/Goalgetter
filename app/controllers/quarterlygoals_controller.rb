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

    @quarterlygoals = @yearlygoal.quarterlygoals.create(quarterlygoals_params[:quarterlygoals].values)

    weeklytodo1 = Weeklytodo.create(
      title: "Budget Review",
      description: "Spend 30 minutes each week reviewing expenses from the previous week, categorizing spending, and identifying areas where you can cut back. Look for ways to save money on bills, subscriptions, and other expenses. ",
      done: false,
      quarterlygoal: @quarterlygoals.first
    )

    if @quarterlygoals.all?(&:valid?)
      redirect_to dashboard_path
    else
      render :new, status: :unprocessable_entity
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
