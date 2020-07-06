class PagesController < ApplicationController

def home
  @screenings = Screening.where(user_id: current_user.id)
end

end
