class ProductsController < ApplicationController 
#	paginates_per 3
	max_paginates_per 3

  def index
		@category = Category.find_by(id: params[:category_id])
		@products = @category.products.order('product.name asc').page(params[:page])
		render '/categories/show'

  	# @products = Product.order('product.name asc').page(params[:page])
  end

  def show
  	@category = Category.find_by(id: params[:category_id])
  	@product = @category.products.find_by(id: params[:id])
  end

  def new
  end

  def edit
  end
end
