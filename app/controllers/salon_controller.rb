class SalonController < ApplicationController
  protect_from_forgery

  def index
    @salon = Salon.find(params[:id])
  end

  def create
    if @salon.save
      flash[:success] = "ご予約承りました。"
      redirect_to @salon
    else
      flash.now[:danger] = "恐れ入りますが、ご予約を承ることができませんでした。"
      render 'new'
  end

  def new
    salon = Salon.new
    salon.save
    render 'new'
  end

  def confirm

  end

  def edit
  end

  def show
    render 'show'
  end

  def update
  end

  def destroy
  end

  private

    def salon_params
      params.require(:salon).permit(:email)
    end

  end
end
