class WeeklytodosController < ApplicationController
  before_action :set_weeklytodo, only: [:show, :edit, :update, :destroy]
  # skip_before_action :authenticate_user!, only: :index

  def index
    @weeklytodos = Weeklytodo.all
  end

  def show
    @weeklytodo = Weeklytodo.find(params[:id])
  end

  def new
    @weeklytodo = Weeklytodo.new
  end

  def create
    @user = current_user
    @weeklytodo = Weeklytodo.new(weeklytodo_params)
    @weeklytodo.user = @user
    if @weeklytodo.save
      # redirect_to yearlygoal_path(@ygoal) unclear about route
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    @weeklytodo.update(weeklytodo_params)
    redirect_to dashboard_path
  end

  def destroy
    @weeklytodo.destroy
    redirect_to dashboard_path
  end

  private

  def set_weeklytodo
    @weeklytodo = Weeklytodo.find(params[:id])
  end

  def weeklytodo_params
    params.require(:weeklytodo).permit(:title, :description, :done)
  end
end
