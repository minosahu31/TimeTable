class TimingsController < ApplicationController
  
  def index
  end

  def show
  end

  def new
     @time_table = Timing.new 
     @week_days = WeekDay.all
     @time_slots = TimeSlot.all
     @subjects = Subject.all
     @staffs = Staff.all
  end

  def create
  end

  def edit
  end

  def update
  end

  def destory
  end

end
