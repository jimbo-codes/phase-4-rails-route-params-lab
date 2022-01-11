class StudentsController < ApplicationController

  def index
    student = Student.find_by_last_name(params[:name])
    byebug
    students = Student.all
    render json: students
  end

  def show
    student = Student.find_by_id(params[:id])
    render json: student
  end

  def test
    byebug
  end
end
