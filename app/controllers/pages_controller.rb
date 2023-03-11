class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[inspiration home]

  def home
  end

  def dashboard
    @weeklytodos = current_user.weeklytodos
    @quarterlygoals = current_user.quarterlygoals
  end

end
