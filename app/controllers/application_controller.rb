class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :set_breadcrumbs

  def add_breadcrumb(label, path, current = false)
    @breadcrumbs << {
      label: label,
      path: path,
      current: current
    }
  end

  def set_breadcrumbs
    @breadcrumbs = []
  end

  private

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    devise_parameter_sanitizer.permit(:account_update, keys: %i[avatar name])
  end
end
