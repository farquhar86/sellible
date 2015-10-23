class SaleController < ApplicationController
  def index
  end
  def new
   	@sale = Sale.new
  	@phone = Product.where(condition: params["product.condition"], carrier: params["product.carrier"], model: params["product.model"], capacity: params["product.capacity"])
  	price = @phone.first.price
  end

  def create
  	@sale = Sale.new sale_params
    @sale.save
    redirect_to @sale
  end
  def show
   	@sale = Sale.find(params[:id])
  end  
  private

  def sale_params  
      params.require(:sale).permit(:first_name, :last_name, :address, :city, :state, :country, :zipcode, :phone, :email, :product_id)
  end
end
