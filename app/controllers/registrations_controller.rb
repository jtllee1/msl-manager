class RegistrationsController < Devise::RegistrationsController
  protected

  def update_resource(resource, params)
    if current_user.guest
      resource.update(params.except(:current_password))
      current_user[:guest] = false
      current_user.save!
    else
      resource.update_with_password(params)
    end
  end
end
