class SchedulesController < ApplicationController
  before_action :set_schedule, only: [:edit, :show, :destroy]
  def index
    @schedules = Schedule.all
  end

  def new
    @schedule = Schedule.new
  end

  def create
    if Schedule.create(schedule_parameter)
      redirect_to root_path
    else
      render :create
    end
  end
  def edit
  end
  def destroy
    if @schedule.destroy
      redirect_to root_path
    else
      render :edit
    end
  end
  def update
    if @schedule.update(schedule_params)
      redirect_to root_path
    else
      render :edit
    end
  end
  def show
  end

  private

  def schedule_parameter
    params.require(:schedule).permit(:work, :item, :place, :memo, :start_time)
  end
  def set_schedule
    @schedule = Schedule.find(params[:id])
  end

end
