class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def edit
    @category = Category.find params[:id]
  end

  def update
    @category = Category.find params[:id]
    if @category.update_attributes category_params
      redirect_to categories_path, notice: "Successfully updated category."
    end
  end

  private

  def category_params
    binding.pry
    params.require(:category).permit(:name, post_ids: [])
  end
end
