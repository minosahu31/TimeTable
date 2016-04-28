class BatchesController < ApplicationController
   
    before_action :find_batch, only: [:show, :edit, :update, :destroy]
    before_action :batch_params, only: [:create, :update] 
    before_action :find_departments_array, only: [:new, :edit]


    def index
      @batches = Batch.all  
    end

    def show
      @students = @batch.students
    end

    def new
      @batch = Batch.new
    end

    def create
      @batch = Batch.new(batch_params)
      if @batch.save
        redirect_to batches_path
      else
        render 'new'
      end
    end

    def edit
    end

    def update
      if @batch.update(batch_params)
        redirect_to batches_path
      else
        render 'edit'
      end
    end

    def destroy
      if @bacth.destroy
        redirect_to batches_path
      end
    end

    def batch_students
      @batch = Batch.find(params[:id])
      @students = @batch.students

      redirect_to batch_path(@batch)
    end

    private

    def find_batch
     @batch = Batch.find(params[:id])
    end

    def batch_params
      params.require(:batch).permit(:batch_id, :year, :department_id, :room_no)
    end

    def find_departments_array
      @departments_array = Department.pluck(:name, :id)
    end

end

