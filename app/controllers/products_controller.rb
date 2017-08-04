class ProductsController < ApplicationController
	 before_action :find_product, only: %i[edit show update destroy]  
	 def index
   @products = Product.all
 end  
 def new
   @product = Product.new
   @categories = Category.all.map { |a| [a.title, a.id] }
   @brands = Brand.all.map { |a| [a.title, a.id] }
 end 
  def create
   @product = Product.new(product_params)
   if @product.save
     redirect_to @product
   else
     render 'new'
   end 
    end  
    def edit
   @categories = Category.all.map{ |a| [a.title, a.id] }
   @brands = Brand.all.map{ |a| [a.title, a.id]}
 end 

  def show
 end 

  def update
   @product.category_id = params[:category_id]
   @product.brand_id = params[:brand_id]    if @product.update(product_params)
     redirect_to product_path(@product)
   else
     render 'edit'
   end
 end

  def destroy
   @product.destroy
 end 

 private 
  def product_params
   params.require(:product).permit(:name, :title, :description, :price, :category_id, :brand_id, :image)
 end
 def find_product
   @product = Product.find(params[:id])
 end
end
