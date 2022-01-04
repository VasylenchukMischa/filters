class BrandsController < ApplicationController
  def index
    @brands = collection
  end

  def show
    @brand = resource
  end

  def new
    @brand = Brand.new
  end

  def create
    @brand = Brand.new(brand_params)

    if @brand.save
      redirect_to @brand
    else
      render :new
    end
  end

  def edit
    @brand = resource
  end

  def update
    @brand = resource

    if @brand.update(brand_params)
      redirect_to @brand
    else
      render :new
    end
  end

  def destroy
    @brand = resource
    @brand.destroy
    redirect_to brands_path
  end

  private

  def collection
    Brand.all
  end

  def resource
    collection.find(params[:id])
  end

  def brand_params
    params.require(:brand).permit(:name)
  end
end
