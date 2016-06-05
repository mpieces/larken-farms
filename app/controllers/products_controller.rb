class ProductsController < ApplicationController
  # before_action :set_product, only: [:show, :edit, :update, :destroy]
  skip_before_action :authorize, only: :index
  # Skip authorization, but users can only view index page

  # GET /products
  # GET /products.json
  def index
    @products = Product.all
    # @content_id = true
  end

  # GET /products/1
  # GET /products/1.json
  # def show
  # end

  # GET /products/new
  def new
    @product = Product.new
  end

  # GET /products/1/edit
  def edit
    @product = Product.find(params[:id])
  end

  # POST /products
  # POST /products.json
  def create
    @product = Product.new(product_params)
    if @product.save
      flash[:success] = "Product saved"
      redirect_to products_path
    else
      render 'new'
    end
    # respond_to do |format|
    #   if @product.save
    #     format.html { redirect_to @product, notice: 'Product was successfully created.' }
    #     format.json { render :show, status: :created, location: @product }
    #   else
    #     format.html { render :new }
    #     format.json { render json: @product.errors, status: :unprocessable_entity }
    #   end
    # end
  end

  # PATCH/PUT /products/1
  # PATCH/PUT /products/1.json
  def update
    @product = Product.find(params[:id])
    if @product.update(product_params)
      flash[:success] = "Product updated"
      redirect_to products_path
    else
      render 'edit'
    end
    # respond_to do |format|
    #   if @product.update(product_params)
    #     format.html { redirect_to @product, notice: 'Product was successfully updated.' }
    #     format.json { render :show, status: :ok, location: @product }
    #   else
    #     format.html { render :edit }
    #     format.json { render json: @product.errors, status: :unprocessable_entity }
    #   end
    # end
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    Product.find(params[:id]).destroy
    flash[:success] = "Product deleted"
    redirect_to products_path
    # respond_to do |format|
    #   format.html { redirect_to products_url, notice: 'Product was successfully destroyed.' }
    #   format.json { head :no_content }
    # end
  end

  # def who_bought
  #   @product = Product.find(params[:id])
  #   @latest_order = @product.orders.order(:updated_at).last
  #   if stale?(@latest_order)
  #     respond_to do |format|
  #       format.atom
  #     end
  #   end
  # end

  private
    # Use callbacks to share common setup or constraints between actions.
    # def set_product
    #   @product = Product.find(params[:id])
    # end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      params.require(:product).permit(:title, :description, :image)
    end
end
