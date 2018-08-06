class CategoriesController < ApplicationController


    def index
      @categories = Category.all

    end

    def new
      #form for adding a new review
      @category = Category.new
    end

    def create
      #take the info from the form and add to the model
      @category = Category.new(form_params)

      #we want to check if the model can be saved
      #if it is we're going to the homepage again
      #if it isn't show the new form

      if @category.save
        redirect_to root_path
      else
        #show the view for new.html.erb
        render "new"
      end
    end

    def show
      #individual review page
      @category = Category.find(params[:id])
    end


    def form_params
      params.require(:category).permit(:title)
    end


end
