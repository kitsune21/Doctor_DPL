class DoctorsController < ApplicationController
  before_action :set_doctor, only: [:edit, :update, :destroy, :show]
  def index
    @doctors = Doctor.all.order('id ASC')
  end

  def show
    @appointments = Appointment.where(doctor_id: @doctor)
  end

  def new
    @doctor = Doctor.new
    @specialities = Speciality.all
  end

  def create
    @doctor = Doctor.new(doctor_params)
    if @doctor.save
      redirect_to doctors_path
    else
      render :new
    end
  end

  def edit
    @specialities = Speciality.all
  end

  def update
    if @doctor.update(doctor_params)
      redirect_to doctors_path
    else
      render :edit
    end
  end

  def destroy
    @doctor.destroy
    redirect_to doctors_path
  end

  private
    def set_doctor
      @doctor = Doctor.find(params[:id])
    end
    def doctor_params
      params.require(:doctor).permit(:name, :tenure, :speciality_id)
    end
end
