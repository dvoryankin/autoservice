class PerformersController < ApplicationController
  def index
    @performers = Performer.order(params[:sort])
  end

  def new
    @performer = Performer.new
  end

  def create
    # debugger
    @performer = Performer.new(performer_params)

    if @performer.save
      redirect_to performer_path(@performer)
      flash[:success] = 'success'
    else
      render :new
      flash[:success] = 'failure'
    end
  end

  def show
    @performer = Performer.find(params[:id])
  end

  def edit
    @performer = Performer.find(params[:id])
  end

  def update
    @performer = Performer.find(params[:id])

    if @performer.update(performer_params)
      redirect_to performer_path(@performer)
      flash[:success] = 'success'
    else
      render :edit
      flash[:success] = 'failure'
    end
  end

  def destroy
    @performer = performer.find(params[:id])
    if @performer.destroy
      redirect_to root_path
    else
      redirect_to performer_path(@performer)
    end
  end

  private

  def performer_params
    params.require(:performer).permit(:name)
    #require заберёт из парамса те данные, которые касаются статьи performer
  end
end
