class GuardianDetailsController < ApplicationController
  before_action :set_guardian_detail, only: [:show, :edit, :update, :destroy]

  # GET /guardian_details
  # GET /guardian_details.json
  def index
    @guardian_details = GuardianDetail.all
  end

  # GET /guardian_details/1
  # GET /guardian_details/1.json
  def show
  end

  # GET /guardian_details/new
  def new
    @guardian_detail = GuardianDetail.new
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
