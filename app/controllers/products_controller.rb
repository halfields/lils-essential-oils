class ProductsController < ApplicationController
  def index
  	@products = Product.order('product.name asc').page(params[:page])
  end

  def show
  end

  def new
  end

  def edit
  end
end
