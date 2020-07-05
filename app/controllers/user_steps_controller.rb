class UserStepsController < ApplicationController
  include Wicked::Wizard

  steps :selbstdarstellung, :affektive, :soziale, :kognitive, :lebenspraktischer

  def show
    @screening = Screening.new
    render_wizard
  end

  def update
    #@screening = Screening.find(params[:id])
    @screening.attributes = params[:screening]
    render_wizard @screening
  end

  def create
    @screening = Screening.new(screening_params)
    @screening.user_id = current_user.id
    @screening.save
  end

  private

  def screening_params
    params.require(:screening).permit!
  end

end
