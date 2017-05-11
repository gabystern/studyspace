class CategoriesController < ApplicationController
  before_action :authorize_user
    skip_before_action :authorize_user, only: [:index]

  def index
    @categories = Category.all
  end

  def show
    if Category.find_by_slug(params[:id])
      @category = Category.find_by_slug(params[:id])
    else
      @category = Category.find(params[:id])
    end
    @category
  end

end
