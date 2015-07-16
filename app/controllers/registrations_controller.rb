class RegistrationsController < Devise::RegistrationsController
protected

    def after_update_path_for(resource)
    	p "upddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd"
      user_path(resource)
    end

   

    def after_sign_up_path_for(resource)
   p "uuuuuuuuuuuuuuuuuuuuuuupppppppppppppppppppppppppppppppppppn"
      user_path(resource)    
    # '/an/example/path' # Or :prefix_to_your_route
  end
end