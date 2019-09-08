class AppointmentsController < ApplicationController
  before_action :set_appointment, only: [:show, :edit, :update, :destroy]
  def index
    @appointments = Appointment.all
  end

  def show
  end

  def new
    @appointment = Appointment.new
  end

  def create
    @appointment = Appointment.new(appointment_params)
    if @appointment.save
      redirect_to appointments_path
    else
      render :new
    end
  end

  def edit
    @doctors = Doctor.all

  end

  def update
    if @appointment.update(appointment_params)
      redirect_to appointments_path
    else
      render :edit
    end
  end

  private 
    def set_appointment
      @appointment = Appointment.find(params[:id])
    end
    def appointment_params
      params.require(:appointment).permit(:time, :comment, :doctor_id, :patient_id)
    end
end
