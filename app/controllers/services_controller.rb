class ServicesController < ApplicationController
  def index
    @services = Service.order(params[:sort])
  end

  def new
    @service = Service.new
  end

  def create
    # debugger
    @service = Service.new(service_params)

    if @service.save
      redirect_to service_path(@service)
      flash[:success] = 'success'
    else
      render :new
      flash[:success] = 'failure'
    end
  end

  def show
    @service = Service.find(params[:id])
  end

  def edit
    @service = Service.find(params[:id])
  end

  def update
    @service = Service.find(params[:id])

    if @service.update(service_params)
      redirect_to service_path(@service)
      flash[:success] = 'success'
    else
      render :edit
      flash[:success] = 'failure'
    end
  end

  def destroy
    @service = Service.find(params[:id])
    if @service.destroy
      redirect_to root_path
    else
      redirect_to service_path(@service)
    end
  end

  private

  def service_params
    params.require(:service).permit(:title, :order)
    #require заберёт из парамса те данные, которые касаются статьи service
  end
end

