class RecipeController < ApplicationController
  def search
    if params[:query]
      url = "http://www.recipepuppy.com/api/?&q="
      $response = HTTParty.get("#{url}#{params[:query]}", format: :json)

      if $response.message.eql?("OK") || $response.code.eql?(200)
        redirect_to recipe_show_path
      else
        flash[:alert] = "Oops, something went wrong with your search."
        redirect_to root_path
      end

    end
  end

  def show
    @recipes = $response
  end
end
