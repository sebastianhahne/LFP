class ScreeningsController < ApplicationController

  def new
    @screening = Screening.new
  end

  def create
    @screening = Screening.new(screening_params)
    @screening.user = current_user
    @screening.save
  end

  def show
    @screening = Screening.find(params[:id])
  end

  def index
    @screenings = Screening.all
  end

  private

  def screening_params
    params.require(:screening).permit!
  end
end