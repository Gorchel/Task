class UserDescriptionsController < ApplicationController
  skip_before_action :registrate_user_description!
  
  def index
   
  end

  def new
  	if current_user.user_description.blank?
   	   @user_description = UserDescription.new
   	   @countries = Country.all
   	else
   	   redirect_to root_path
   	end	
  end

  def create
  	@user_description = UserDescription.new(user_description_params.merge(user_id: current_user.id))
  	respond_to do |format|
		if @user_description.save
			format.html { redirect_to root_path, notice: 'User description was successfully created.' }
		else
			format.html { render :new }
		end
	end
  end

  def edit

  end

  def show

  end

  def update

  end

  def user_description_params
      params.require(:user_description).permit(:first_name, :last_name, :birthday, :country_id)
  end
end
