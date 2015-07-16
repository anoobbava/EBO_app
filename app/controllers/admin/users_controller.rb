class Admin::UsersController < ApplicationController
  before_action :authenticate_user!
  
	def index
		@users=User.all
	end	

	def new
		@user=User.new
		designation_list 
	end

  def show
    @user = User.find(params[:id])
  end
  def edit 
    @user = User.find(params[:id])
    designation_list
  end 

  def create
	 @user =User.new(user_params)
	 if @user.save
		  redirect_to admin_users_path(@user)
	 else
        designation_list

		  render :new
	 end
  end
  
  def designation_list
	 @designations=Designation.all.map{|d|[d.name,d.id]}
  end

  def update
    @user = User.find(params[:id])
    designation_list
    if @user.update(user_params)
      redirect_to [:admin,@user]
    else
      render 'edit'
    end  
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to admin_users_path
  end

  private
    def user_params
      params.require(:user).permit(:firstname, :designation_id ,:middlename, :lastname, :email, :loginid, :password, :password_confirmation, :empid, :dob, :timezone, :doj,  :gender, :education, :comments, :locked, :deactivated, :reason, :phone, :image, :deactivated_date)
    end
end
