# Application Controller
class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  config.relative_url_root = ''
  def categories_help
    @categories = Category.all
  end
  helper_method :categories_help
end
