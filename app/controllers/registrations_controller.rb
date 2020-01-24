class RegistrationsController < Devise::RegistrationsController
  protected

  def update_resource(resource, params)
    resource.update(params.except(:current_password))
    current_user[:guest] = false
    current_user.save!
  end
end
