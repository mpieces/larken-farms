class UpdatesController < AuthenticatedController

  skip_before_action :authorize, only: :index

  def index
    @updates = Update.order('created_at desc')
  end

  def new
    @update = Update.new
  end

  def create
    @update = Update.new(update_params)
    if @update.save
      flash[:success] = "Update added!"
      redirect_to root_path
    else
      render 'new'
    end
  end

  def update
    @update = Update.find(params[:id])
    if @update.update(update_params)
      flash[:success] = "Updated"
      redirect_to root_path
    else
      render 'edit'
    end
  end

  def destroy
    Update.find(params[:id]).destroy
    flash[:success] = "Update deleted"
    redirect_to root_path
  end


  private

  def update_params
    params.require(:update).permit(:date, :content)
  end
end
