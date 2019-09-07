class AppointmentsController < ApplicationController
  
  def index
    @appointments = Appointment.all
  end

  def show
  end

  def new
  end

  def edit
  end
end
