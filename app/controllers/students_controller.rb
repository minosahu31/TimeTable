class StudentsController < ApplicationController
  
    before_action :find_student, only: [:show, :edit, :update, :destroy]
    before_action :student_params, only: [:create, :update] 
    before_action :find_batches_array, only: [:new, :edit]

    def index
      @students = Student.all  
    end

    def show
    end

    def new
      @student = Student.new
    end

    def create
      street = params[:street]
      city = params[:city]
      state = params[:state]  

      @student = Student.new(student_params)
      if @student.save 
        @address = {:street => street, :city => city, :state => state, :student_id => @student.id}
        if Address.create(@address)
          redirect_to students_path
        end  
      else
        render 'new'
      end
    end

    def edit
    end

    def update
      if @student.update(student_params)
        redirect_to students_path
      else
        render 'edit'
      end
    end

    def destroy
      if @student.destroy
        redirect_to students_path
      end
    end

    private

    def find_student
     @student = Student.find(params[:id])
    end

    def student_params
      params.require(:student).permit(:register_number, :first_name, :last_name, :email, :dob, :batch_id)
    end

    def find_batches_array
      @bacthes_array = Batch.pluck(:year, :id)
    end
end
