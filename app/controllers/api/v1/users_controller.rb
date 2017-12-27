module Api
  module V1
    class UsersController < ApplicationController
     skip_before_action :verify_authenticity_token  
       def index
    	@users = User.all

   		 render json: @users
   
  		end
      
      def show
    render json: @user
  end
     
     def create
    @user = User.new(user_params)

    if @user.save
      render json: @user, status: :created, location: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

     def update
    if @user.update(user_params)
      render json: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # DELETE /users/1
  def destroy
    User.destroy(params[:id])
    @users = User.all

   		 render json: @users
   

  end

   private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:name, :email, :contact)
    end


    end
  end
end