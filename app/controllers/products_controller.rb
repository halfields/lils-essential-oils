class ProductsController < ApplicationController 
#	paginates_per 3
	max_paginates_per 3
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
