class Api::RecipesController < Api::ApiController
  inherit_resources
  skip_before_filter :authenticate_user!

  def index
    @recipes = Recipe.where(user_id: params[:user_id])
    render json: @recipes, root: false
  end

end
