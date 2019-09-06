class DoctorsController < ApplicationController
  before_action :set_doctor, only: [:edit, :update, :destroy]
  def index
    @doctors = Doctor.all.order('id ASC')
  end

  def show
  end

  def new
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
