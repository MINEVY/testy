
class OrdersController < ApplicationController
  def index
    @orders = Order.all
  end

  def new
    @order = Order.new
  end

  def show
    @order = Order.find(params[:id])
  end

  def edit
    @order = Order.find(params[:id])
  end

  def update
    @order = Order.find(params[:id])
    if @order.update(order_params)
      redirect_to @order
    else
      render 'edit'
    end
  end

  def create
    @order = Order.new(order_params)
    if @order.save
      redirect_to @order
    else
      render 'new'
    end
  end

  private
  def order_params
    params.require(:order).permit(:name, :amount, :size, :is_oneside, :product_type, :order_type, :is_reprint, :assignee, :customer_name, :paper, :machine, :note, :proof_date, :koryo_date, :print_date, :bookbind_date)
  end
end
