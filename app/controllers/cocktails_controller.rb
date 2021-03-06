class CocktailsController < ApplicationController
  before_action :set_cocktail, only: [:show, :edit, :update, :destroy]
  def index
    @cocktail = Cocktail.new
    @cocktails = Cocktail.all
    if params[:query].present?
      @cocktails = Cocktail.joins(:ingredients).where("ingredients.name LIKE '%#{params[:query]}%' or ingredients.name LIKE '%#{params[:query].capitalize}%'")
      if @cocktails.empty?
        @cocktails = Cocktail.where("cocktails.name LIKE '%#{params[:query].capitalize}%' or cocktails.name LIKE '%#{params[:query]}%'")
      end
    end
    @no_results = "No results" if @cocktails.empty?
  end

  def show
    @review = Review.new
    @dose = Dose.new
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save
      redirect_to cocktail_path(@cocktail)
    else
      redirect_to root_path, notice: 'There was an error'
    end
  end

  def edit
  end

  def update
    @cocktail.update(cocktail_params)
    if @cocktail.save
      redirect_to cocktail_path(@cocktail)
    else
    end
  end

  def destroy
    @cocktail.destroy
    redirect_to root_path
  end

  private

  def set_cocktail
    @cocktail = Cocktail.find(params[:id])
  end

  def cocktail_params
    params.require(:cocktail).permit(:name, :photo, :description, :review, :review_score)
  end
end
