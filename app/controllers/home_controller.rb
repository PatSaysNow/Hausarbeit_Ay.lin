class HomeController < ApplicationController
  def index
  end

  def new
	  @product = Produkte.new
  end

  def create
	  @product = Produkte.new(painting_params)

	  respond_to do |format|
		  if @product.save
			  format.html { redirect_to @product, notice: 'Painting was successfully created.' }
			  format.json { render action: 'show', status: :created, location: @product }
		  else
			  format.html { render action: 'new' }
			  format.json { render json: @product.errors, status: :unprocessable_entity }
		  end
	  end
  end

def painting_params
  params.require(:produkte).permit(:name, :image, :remote_image_url)
end

  def about
  end
end

