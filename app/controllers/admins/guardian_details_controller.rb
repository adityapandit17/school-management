class Admins::GuardianDetailsController < ApplicationController
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

  # GET /guardian_details/1/edit
  def edit
  end

  # POST /guardian_details
  # POST /guardian_details.json
  def create
    @guardian_detail = GuardianDetail.new(guardian_detail_params)

    respond_to do |format|
      if @guardian_detail.save
        format.html { redirect_to admins_guardian_detail_path(@guardian_detail), notice: 'Guardian detail was successfully created.' }
        format.json { render :show, status: :created, location: @guardian_detail }
      else
        format.html { render :new }
        format.json { render json: @guardian_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /guardian_details/1
  # PATCH/PUT /guardian_details/1.json
  def update
    respond_to do |format|
      if @guardian_detail.update(guardian_detail_params)
        format.html { redirect_to admins_guardian_detail_path(@guardian_detail), notice: 'Guardian detail was successfully updated.' }
        format.json { render :show, status: :ok, location: @guardian_detail }
      else
        format.html { render :edit }
        format.json { render json: @guardian_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /guardian_details/1
  # DELETE /guardian_details/1.json
  def destroy
    @guardian_detail.destroy
    respond_to do |format|
      format.html { redirect_to admins_guardian_details_url, notice: 'Guardian detail was successfully destroyed.' }
      format.json { head :no_content }
    end
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
