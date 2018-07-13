class OrdersController < ApplicationController
  
layout ' landing.html.erb'
 


  # GET /orders/new
  def new
    @order = Order.new
  end

  # GET /orders/1/edit
  

  # POST /orders
  # POST /orders.json
  def create
    @order = Order.new(order_params)
    
      if @order.save 
        redirect_to root_path
      else
        render :new 
       
      end
    
  end

 

  

  private
   
    # Never trust parameters from the scary internet, only allow the white list through.
    def order_params
      params.require(:order).permit(:name, :email, :phone)
    end
end
