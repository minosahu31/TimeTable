class StaffsController < ApplicationController
   
    before_action :find_staff, only: [:show, :edit, :update, :destroy]
    before_action :staff_params, only: [:create, :update] 
    before_action :find_departments_array, only: [:new, :edit]

    def index
      @staffs = Staff.all  
    end

    def show
    end

    def new
      @staff = Staff.new
    end

    def create
      @staff = Staff.new(staff_params)
      if @staff.save
        redirect_to staffs_path
      else
        render 'new'
      end
    end

    def edit
    end

    def update
      if @staff.update(staff_params)
        redirect_to staffs_path
      else
        render 'edit'
      end
    end

    def destroy
      if @staff.destroy
        redirect_to staffs_path
      end
    end

    private

    def find_staff
     @staff = Staff.find(params[:id])
    end

    def staff_params
      params.require(:staff).permit(:staff_id, :first_name, :last_name, :email, :dob, :department_id)
    end

    def find_departments_array
      @departments_array = Department.pluck(:name, :id)
    end

end

