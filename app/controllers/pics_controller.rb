class PicsController < ApplicationController
  # before_action :set_pic, only: [:show, :edit, :update, :destroy]

  # GET /pics
  # GET /pics.json
  def index
   @pics = Pic.order('created_at desc').all
  end

  # GET /pics/1
  # GET /pics/1.json
  def show
  end

  # GET /pics/new
  def new
    @pic = Pic.new
  end

  # GET /pics/1/edit
  def edit
  end

  # POST /pics
  # POST /pics.json
  def create
    @pic = Pic.new(pic_params)
    if @pic.save
      redirect_to pics_url, notice: 'Pic was successfully created.'
    else
      render 'new'
    end
  end

  # PATCH/PUT /pics/1
  # PATCH/PUT /pics/1.json
  def update
    @pic = Pic.find(params[:id])
    if @pic.update(pic_params)
      redirect_to pics_url(@pic)
    else
      render 'edit'
    end
  end

  # DELETE /pics/1
  def destroy
    @pic = Pic.find(params[:id])
    @pic.destroy
    redirect_to pics_url, notice: 'Pic was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pic
      @pic = Pic.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pic_params
      params.require(:pic).permit(:img, :caption)
    end
end
