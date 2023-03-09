class FiveyeargoalsController < ApplicationController
  def new
    @fiveyeargoal = Fiveyeargoal.new
  end

  def create
    @fiveyeargoal = Fiveyeargoal.new(title: fiveyeargoal_params[:thing_1])

    if @fiveyeargoal.save
      redirect_to yearlygoals_path, notice: 'Five year goal was successfully created.'
    else
      render :new
    end
  end

  private

  def fiveyeargoal_params
    params.require(:fiveyeargoal).permit(:thing_1)
  end
end
