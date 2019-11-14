class DosesController < ApplicationController
  def new
    @dose = Dose.new
  end

  def create
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new(dose_params)
    @dose.cocktail = @cocktail
    if @dose.save
      redirect_to cocktail_path(@cocktail)
    else
      # render :new
      redirect_to cocktail_path(@cocktail)
    end
  end

  private

  def dose_params
    params.require(:dose).permit(:ingredient_id, :description)
  end
end
