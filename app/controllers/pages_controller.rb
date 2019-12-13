class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
  end

  def dashboard
    @msl_gems = MslGem.where(user_id: current_user.id)
  end
end
