class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :inspiration

  def home
  end

  def dashboard
  end

end
