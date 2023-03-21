class FiveyeargoalsController < ApplicationController
  def new
    @form = FiveyeargoalsForm.new(Fiveyeargoal.new)
  end

  def index
    @fiveyeargoals = Fiveyeargoal.all
  end

  def create
    if Fiveyeargoal.create(
      [
        { vision: form_params[:vision], title: form_params[:title_1], description: form_params[:description_1], user: current_user },
        { vision: form_params[:vision], title: form_params[:title_2], description: form_params[:description_2], user: current_user },
        { vision: form_params[:vision], title: form_params[:title_3], description: form_params[:description_3], user: current_user }
      ]
    )
      redirect_to new_yearlygoal_path
    else
      render :new
    end
  end

  private

  def form_params
    params.require(:fiveyeargoals).permit(:vision, :title_1, :description_1, :title_2, :description_2, :title_3, :description_3)
  end
end
