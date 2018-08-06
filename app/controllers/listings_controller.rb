class ListingsController < ApplicationController


  def index
    @listings = Listing.find(params[:categories_id])

  end

  def new
    #form for adding a new review
    @listing = Listing.new
  end

  def create

    @category = Category.find(params[:categories_id])


    @listings = @category.listings.new

    @listing.save

    #go back to the review show page
    redirect_to category_path(@category)

  end

  def show
    #individual review page
    @listings = Listing.all
  end


  def form_params
    params.require(:listing).permit(:category, :title, :body)
  end


end
