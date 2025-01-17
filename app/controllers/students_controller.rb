class StudentsController < ApplicationController

  def index
    if params[:query]
      students = Student.where('first_name LIKE ? OR last_name LIKE ?', "%#{params[:query]}%", "%#{params[:query]}%")
    else
      students = Student.all
    end
  
    render json: students
  end  

  def show
    students = Student.find(params[:id])
    render json: students
  end

end


