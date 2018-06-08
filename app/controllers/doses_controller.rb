class DosesController < ApplicationController

  def new
    set_cocktail

    @dose = Dose.new(cocktail: @cocktail)
  end

  def create
    @dose = Dose.new(doses_params)
    @dose.cocktail = set_cocktail
    set_cocktail
    @dose.ingredient = set_ingredient
    if @dose.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  def destroy
    @dose = Dose.find(params[:id])
    @dose.destroy
    redirect_to cocktail_path(set_cocktail)
  end

  private

  def doses_params
    params.require(:dose).permit(:description)
  end

  def set_cocktail
    @cocktail = Cocktail.find(params[:cocktail_id])
  end

  def set_ingredient
    @ingredient = Ingredient.find(params["dose"]["ingredient_id"].to_i)
  end
end
