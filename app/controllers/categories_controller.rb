require 'pry'

class CategoriesController < ApplicationController 

  def index
  	@categories = Category.all
  end

  def show
  	@category = Category.find_by(id: params[:id])
 # 	raise params.inspect
  	@products = @category.products.order('product.price asc').page(params[:page]).per(3)
# 	binding.pry
  end
end
