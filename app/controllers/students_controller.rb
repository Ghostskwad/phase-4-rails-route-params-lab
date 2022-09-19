class StudentsController < ApplicationController

  def index
    if params[:name]
      students = Student.select{|student| student.first_name == params[:name] || student.last_name == params[:name]}
    else
      students = Student.all
   end
    render json: students
  end

  def show
    render json: student_id = Student.find_by(id: params[:id])
  end

end
