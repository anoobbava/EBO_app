class UsersController < ApplicationController

def index
end	

def new
	@user=User.new
end



def show
    @user = User.find(params[:id])
  end


def create
	@user =User.new(user_params)
	
	
	if @user.save
		redirect_to user_path(@user)
	else
		render :new
	end
end



private
  def user_params
    params.require(:user).permit(:firstname, :middlename, :lastname, :emailid, :loginid, :password, :password_confirmation, :empid, :dob, :timezone, :doj, :designation, :gender, :education, :comments, :locked, :deactivated, :reason, :phone)
  end

end