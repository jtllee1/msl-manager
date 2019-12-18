class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
  end

  def dashboard
    @astromons = Astromon.where(user_id: current_user.id)
    @msl_gems = MslGem.where(user_id: current_user.id)
    check_gem_type
  end

  private

  def check_gem_type

  end
end
