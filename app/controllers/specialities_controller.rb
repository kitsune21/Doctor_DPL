class SpecialitiesController < ApplicationController
  before_action :set_speciality, only: [:edit, :update, :destroy]
  def index
    @specialities = Speciality.all.order('id ASC')
  end

  def show
  end

  def new
  end

  def edit
  end

  def update
    if @speciality.update(speciality_params)
      redirect_to specialities_path
    else
      render :edit 
    end
  end

  def destroy
    @speciality.destroy
    redirect_to specialities_path
  end

  private
    def set_speciality
      @speciality = Speciality.find(params[:id])
    end
    def speciality_params
      params.require(:speciality).permit(:speciality)
    end
end
