class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])
  end

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
    @recipe.ingredients.build
    @recipe.ingredients.build
  end


  def create
    recipe = Recipe.create(recipe_params)
    redirect_to recipes_path
  end

  private

 # {"utf8"=>"✓", "recipe"=>
 #    {"title"=>"Chocolate Cake",
 #      "ingredients_attributes"=>
 #        {
 #          "0"=>{"name"=>"", "quantity"=>""},
 #          "1"=>{"name"=>"", "quantity"=>""}
 #        }
 #      },
 #        "commit"=>"Create Recipe", "controller"=>"recipes", "action"=>"create"}
  def recipe_params
    params.require(:recipe).permit(:title, ingredients_attributes: [:quantity,:name])
  end
end
