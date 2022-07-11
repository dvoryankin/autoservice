class CategoriesController < ApplicationController
  def index
    @categories = Category.order(created_at: :desc)
  end

  def new
    @category = Category.new
  end

  def create
    # debugger
    @category = Category.new(category_params)

    if @category.save
      redirect_to category_path(@category)
      flash[:success] = 'success'
    else
      render :new
      flash[:success] = 'failure'
    end
  end

  def show
    @category = Category.find(params[:id])
  end

  def edit
    @category = Category.find(params[:id])
  end

  def update
    @category = Category.find(params[:id])

    if @category.update(category_params)
      redirect_to category_path(@category)
      flash[:success] = 'success'
    else
      render :edit
      flash[:success] = 'failure'
    end
  end

  def destroy
    @category = Category.find(params[:id])
    if @category.destroy
      redirect_to root_path
    else
      redirect_to category_path(@category)
    end
  end

  private

  def category_params
    params.require(:category).permit(:title, :body, :author)
    #require заберёт из парамса те данные, которые касаются статьи category
  end
end
