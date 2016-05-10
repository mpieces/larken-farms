class AboutsController < AuthenticatedController

  skip_before_action :authorize, only: :show


  def index
    @about = About.all
  end

  def new
    @about = About.new
  end

  def edit
    @about = About.find(params[:id])
  end

  def update
    @about = About.find(params[:id])
    if @about.update(about_params)
      flash[:success] = "Updated"
      redirect_to about_path
    else
      render 'edit'
    end
  end

  def show
    @about = About.find(params[:id])
  end



  private

  def about_params
    params.require(:about).permit(:content)
  end

end
