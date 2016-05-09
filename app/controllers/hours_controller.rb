class HoursController < AuthenticatedController

  skip_before_action :authorize, only: :index

  def index
    @hours = Hour.all
  end

  def new
    @hours = Hour.new
  end

  def create
    @hours = Hour.new(hours_params)
    if @hours.save
      flash[:success] = "Hours changed"
      redirect_to root_path
    else
      render 'new'
    end
  end

  def edit
    @hours = Hour.find(params[:id])
  end

  def update
    @hours = Hour.find(params[:id])
    if @hours.update(hours_params)
      flash[:success] = "Hours updated"
      redirect_to root_path
    else
      render 'edit'
    end
  end


  private

  def hours_params
    params.require(:hour).permit(:content)
  end
end