module Api
  module V1
    class StudentsController < ApplicationController

       def index
    	@students = Student.all

   		 render json: @students
   
  		end
      
      def show
    render json: @student 
  end
     
     def create
    @student = Student.new(student_params)

    if @student.save
      render json: @student, status: :created, location: @student
    else
      render json: @student.errors, status: :unprocessable_entity
    end
  end

     def update
    if @student.update(student_params)
      render json: @student
    else
      render json: @student.errors, status: :unprocessable_entity
    end
  end

  # DELETE /users/1
  def destroy
    Student.destroy(params[:id])
    @students = Student.all

   		 render json: @students
   

  end

   private
    # Use callbacks to share common setup or constraints between actions.
   def set_student
      @student = Student.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def student_params
      params.require(:student).permit(:firstname, :lastname, :email, :age, :contact, :address, :bloodgroup, :sex, :city,:dob)
    end

    end
  end
end