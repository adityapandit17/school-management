class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :edit, :update, :destroy]

  # GET /students
  # GET /students.json
  def index
    @students = Student.all
    respond_to do |format|
      format.html
      format.csv { send_data @students.to_csv }
      format.xls
      format.pdf do
      render :pdf => "students",:template => "students/index"
    end 
    end
  end

  # GET /students/1
  # GET /students/1.json
  def show
      @student = Student.find(params[:id])
      respond_to do |format|
    format.html # show.html.erb
    format.pdf do
      render :pdf => "student",:template => "students/show"
    end 
  end
  end

def import
  Student.import(params[:file])
  redirect_to root_url, notice: "Student imported."
end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_student
      @student = Student.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def student_params
      params.require(:student).permit(:firstname, :lastname, :email, :age, :contact, :address, :bloodgroup, :sex, :city, :dob,guardian_details_attributes: [:id, :name, :contact, :relation, :address, :email, :city, :state, :zipcode, :qualification, :student_id, :_destroy])
    end
end
