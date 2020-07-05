class ScreeningsController < ApplicationController

  def new
    @screening = Screening.new
  end

  def create
    @screening = Screening.new(screening_params)
    @screening.user_id = current_user.id
    @screening.save
  end

  def show
    @screening = Screening.find(params[:id])
    # @screening.user = current_user
  end

  def index
    @screenings = Screening.where(user_id: current_user.id)
    @json = @screenings.to_json
  end

  private

  def screening_params
    params.require(:screening).permit!
  end
end
