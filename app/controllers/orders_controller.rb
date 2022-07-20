class OrdersController < ApplicationController
  def index
    @orders = Order.order(params[:sort])
  end

  def new
    @order = Order.new
  end

  def create
    # debugger
    @order = Order.new(order_params)

    if @order.save
      redirect_to order_path(@order)
      flash[:success] = 'success'
    else
      render :new
      flash[:success] = 'failure'
    end
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
      redirect_to order_path(@order)
      flash[:success] = 'success'
    else
      render :edit
      flash[:success] = 'failure'
    end
  end

  def destroy
    @order = Order.find(params[:id])
    if @order.destroy
      redirect_to root_path
    else
      redirect_to order_path(@order)
    end
  end

  private

  def order_params
    params.require(:order).permit(:customer_name, service_ids: [])
  end
end
