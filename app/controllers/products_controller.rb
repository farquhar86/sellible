class ProductsController < ApplicationController
  def index
    @products = Product.all
    @product = Product.new
  end

  def new
  end

  def create
    product_params = params.require(:product).permit(:model, :carrier, :capacity, :condition, :price)

    @product = Product.new product_params
    byebug
    @product.save
    redirect_to products_path , flash: { success: "New Product Added!" }
  end
  def search
  	@products = Product.all
  	@models = @products.select(:model).distinct 
  	@carriers = @products.select(:carrier).distinct 
  	@capacities = @products.select(:capacity).distinct
  	@conditions = @products.select(:condition).distinct
  	

  end
  def find
  	@sale = Sale.new
  	@phone = Product.where(condition: params["product.condition"], carrier: params["product.carrier"], model: params["product.model"], capacity: params["product.capacity"])
 	
  	price = @phone.first.price
  	redirect_to "/sale/new"
  end	
end


