class ApplicationController < ActionController::Base
protect_from_forgery with: :exception
before_action :configure_permitted_parameters, if: :devise_controller?	

def check_is_admin
 	
 	if current_user.is_admin
return true
else
	redirect_to homes_path,notice:"page looking for sign_in"
end
end

private

 
def after_sign_out_path_for(resource_or_scope)
  homes_path
end


def after_sign_in_path_for(resource_or_scope)
  secureechakras_path
end

protected

def configure_permitted_parameters
   end

end
