module Api
  module V1
    class GuardianDetailsController < ApplicationController
      skip_before_action :verify_authenticity_token
       def index
    	 @guardian_details = GuardianDetail.all

       render json: @guardian_details
   
  		end
      
      def show
    render json: @guardian_details
  end
     
     def create
    @guardian_detail = GuardianDetail.new(guardian_detail_params)

    if @guardian_detail.save
      render json: @guardian_detail, status: :created, location: @guardian_detail
    else
      render json: @guardian_detail.errors, status: :unprocessable_entity
    end
  end

     def update
    if @guardian_detail.update(guardian_detail_params)
      render json: @guardian_detail
    else
      render json: @guardian_detail.errors, status: :unprocessable_entity
    end
  end

  # DELETE /users/1
  def destroy
    Guardian_detail.destroy(params[:id])
    @guardian_details = GuardianDetail.all

   		 render json: @guardian_details
   

  end

   private
    # Use callbacks to share common setup or constraints between actions.
    def set_guardian_detail
      @guardian_detail = GuardianDetail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def guardian_detail_params
      params.require(:guardian_detail).permit(:name, :contact, :relation, :address, :email, :city, :state, :zipcode, :qualification, :student_id)
    end


    end
  end
end