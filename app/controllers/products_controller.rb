class ProductsController < ApplicationController
  before_action :require_login, only: [:index] 

  def index

    @products = Product.order(params[:sort]).paginate(:page => params[:page], :per_page => 100)
    @product = Product.new
  end

  def new
  end

  def create
    product_params = params.require(:product).permit(:model, :carrier, :capacity, :condition, :price)

    @product = Product.new product_params
   
    @product.save
    redirect_to products_path , flash: { success: "New Product Added!" }
  end
  def edit
    @product = Product.find(params[:id])
  end
  def update
    product_params = params.require(:product).permit(:model, :carrier, :capacity, :condition, :price, :id)

    @product = Product.find(params[:product][:id])
      if @product.update(product_params)
         redirect_to "/products", flash: { success: "Your Change Has Been Saved" }
      else
        redirect_to "/products"  
      end
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
 	  byebug
  	price = @phone.first.price
  	redirect_to "/sale/new"
  end
  def destroy
    Product.delete(params[:id])
    redirect_to "/products", flash: { success: "Phone Deleted" }
  end 	
end


