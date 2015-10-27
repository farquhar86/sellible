class SalesController < ApplicationController
  before_action :require_login, only: [:index] 

  def index
    @sales = Sale.order(params[:sort]).paginate(:page => params[:page], :per_page => 30)
    @products = Product.all
  end
  def new
  	@phone = Product.where(condition: params["product.condition"], carrier: params["product.carrier"], model: params["product.model"], capacity: params["product.capacity"])
    redirect_to new_sale_id_path(@phone.first)
  end

  def newId
    @sale = Sale.new
    id = params[:id]
    @sale_id = Sale.last.id + 1 ##this + 1 is here because it was giving me the 
    @phone = Product.find(id)
  end

  def create
    # here be where email is submitted
    @sale = Sale.new email_params
    @sale.save
    
    render json: {"message" => "Success"}, status: 200
  end
  def complete
    @sale = Sale.find(params[:sale][:id])
    @sale.update(sale_params)
    redirect_to @sale
  end
  def show
   	@sale = Sale.find(params[:id])

  end 
  def update
    sale = Sale.find(params[:id])
    if params[:shipped]
      sale.update_attribute(:phone_shipped, DateTime.now)
    elsif params[:arrived]
      sale.update_attribute(:phone_arrived, DateTime.now)
    elsif params[:paid]
      sale.update_attribute(:sale_paid, DateTime.now)
    end  
      
    redirect_to "/sales"
  end
  def destroy
    Sale.delete(params[:id])
    redirect_to "/sales", flash: { success: "Record Deleted" }
  end 
  private

  def email_params  
      params.require(:sale).permit(:email)
  end
   def sale_params  
      params.require(:sale).permit(:first_name, :last_name, :address, :city, :state, :country, :zipcode, :phone, :product_id, :id)
  end
end
