class StudentsController < ApplicationController

    def index
        students = Student.all 
        render json: students 
        
    end

    def grades
        students = Student.order(grade: :desc)
        students.order(grades: :desc)
        render json: students
end

    def highest_grades
        student = Student.order(grades: :desc).first
        render json: student
    end
