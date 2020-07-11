class ProductsController < ApplicationController
  def new
    @product = Product.new
    @product.product_images.build
  end

  def create
    @product = Product.new(product_params)
    @product.save
    redirect_to product_path(@product)
  end

  def edit
    @product = Product.find_by(id: params[:id])
  end

  def show
    @product = Product.find_by(id: params[:id])
  end
  
  def index
    @products = Product.all
  end
  
  private

  def product_params
    params.require(:product).permit(:name, product_images_images: [])
  end
end
