# Abouts Controller
class AboutsController < ApplicationController
  def about_params
    params.require(:about).permit(:content)
  end

  def index
    @categories = Category.all
    @abouts = About.all
  end
end
