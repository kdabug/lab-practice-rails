class StudentsController < ApplicationController
    before_action :set_student, only: %i[show update destroy]

    def index
      @students = student.all
      render json: { message: "ok", students: @students }
    end
      
    def show
      begin
        @student = student.find(params[:id])
        render json: { message: "ok", student: @student }
      rescue ActiveRecord::RecordNotFound
        render json: { message: 'no student matches that ID' }, status: 404
      rescue StandardError => e
        render json: { message: e.to_s }, status: 500
      end
    end
  
    def create
      @student = student.new(student_params)
  
      if @student.save
        render json: @student, status: :created
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
  
    def destroy
      @student.destroy
    end
  
    private
  
    def set_student
      @student = student.find(params[:id])
    rescue ActiveRecord::RecordNotFound
      render json: { message: 'no teacher matches that ID' }, status: 404
    end
  
    def student_params
      params.require(:student).permit(:name, :description, :photo)
    end
  
  
end
