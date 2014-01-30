class HomeController < ApplicationController
  def index
  end
def painting_params
  params.require(:painting).permit(:name, :image, :remote_image_url)
end

  def about
  end
end
