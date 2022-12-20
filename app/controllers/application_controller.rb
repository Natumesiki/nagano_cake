class ApplicationController < ActionController::Base
#      before_action :authenticate_user!,except: [:top, :about]
#  before_action :configure_permitted_parameters, if: :devise_controller?

def after_sign_in_path_for(resource)
    case resource
    when Organizer
      admin_item_path
    end
end

  def after_sign_out_path_for(resource_or_scope)
      
      if resource_or_scope == :public
          public_homes_top_path
      
      elsif resource_or_scope == :admin
          admin_homes_about_path
      
      end
  end

#     protected

#   def configure_permitted_parameters
#     devise_parameter_sanitizer.permit(:sign_up, keys: [:email,:name])
#     devise_parameter_sanitizer.permit(:Log_in, keys: [:email,:name])
#   end

end
