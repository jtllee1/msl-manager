class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :guest]

  def home
  end

  def dashboard
  end

  def guest
    @guest = User.new(
      email: "guest_#{Time.now.to_i}#{rand(100)}"
    )
    @guest.save!(validate: false)
    sign_in(@guest)
    redirect_to dashboard_path
  end
end
