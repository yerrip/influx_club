class ListingsController < ApplicationController
  def show
    # get the category from the category_id, this is due to the config/routes.rb
    # as we have:
    # resources :categories do
    #   resources :listings
    # end
    @category = Category.find(params[:category_id])
    @listing = Listing.find(params[:id])
  end

  def new
    @category = Category.find(params[:category_id])

    @listing = @category.listings.new
  end

  def create
    @category = Category.find(params[:category_id])

    # make a new listing on this category
    @listing = @category.listings.new(form_params)

    if @listing.save
      redirect_to category_path(@category)
    else
      render "new"
    end
  end

  def form_params
    # get the data from the form
    params.require(:listing).permit(:title, :description)
  end
end
