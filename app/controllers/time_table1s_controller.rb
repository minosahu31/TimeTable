class TimeTable1sController < ApplicationController
 
 def new
     @time_table = TimeTable1.new 
     @week_days = WeekDay.pluck(:name, :id)
     @time_slots = TimeSlot.pluck(:time, :id)
     @subjects = Subject.pluck(:name, :id)
     @batch = Batch.find(params[:format])
     @staffs = Staff.pluck(:first_name, :id)
  end

  def create
  	#raise params.inspect
  	@time_table = TimeTable1.new(time_table_params)
  #	raise params.inspect
  	if @time_table.save
  		redirect_to time_table1_path(@time_table)
  	end

  end

  def show
  	@time_table = TimeTable1.find(params[:id])
  end

  private 

  def time_table_params
  	params.require(:time_table1).permit(:batch_id ,:mon_1, :mon_2, :mon_3, :mon_4, :mon_5, :tue_1, :tue_2, :tue_3, :tue_4, :tue_5, :wed_1, :wed_2, :wed_3, :wed_4, :wed_5, :thus_1, :thus_2, :thus_3, :thus_4, :thus_5, :fri_1, :fri_2, :fri_3, :fri_4, :fri_5,:mon_staff1, :mon_staff2, :mon_staff3, :mon_staff4, :mon_staff5, :tue_staff1, :tue_staff2, :tue_staff3, :tue_staff4, :tue_staff5, :wed_staff1, :wed_staff2, :wed_staff3, :wed_staff4, :wed_staff5, :thus_staff1, :thus_staff2, :thus_staff3, :thus_staff4, :thus_staff5, :fri_staff1, :fri_staff2, :fri_staff3, :fri_staff4, :fri_staff5)
  end

end
