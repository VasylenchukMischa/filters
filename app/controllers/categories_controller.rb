class CategoriesController < ApplicationController
  def index
    @categories = collection
  end

  def show
    @category = resource
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params.merge!(template: params[:template].permit!.to_h.except("_destroy").values.map { |e| e.values }.to_h.except("")))

    if @category.save
      redirect_to @category
    else
      render :new
    end
  end

  def edit
    @category = resource
  end

  def update
    @category = resource

    if @category.update(category_params.merge!(template: params[:template].permit!.to_h.except("_destroy").values.map { |e| e.values }.to_h.except("")))
      redirect_to @category
    else
      render :new
    end
  end

  def destroy
    @category = resource
    @category.destroy
    redirect_to categories_path
  end

  private

  def collection
    Category.all
  end

  def resource
    collection.find(params[:id])
  end

  def category_params
    params.require(:category).permit(:name)
  end
end
