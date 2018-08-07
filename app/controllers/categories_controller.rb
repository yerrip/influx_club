class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(form_params)

    if @category.save
      redirect_to category_path(@category)
    else
      render "new"
    end
  end

  def form_params
    params.require(:category).permit(:title)
  end

end
