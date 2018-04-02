class PicsController < ApplicationController
  def index
  end

  def new
    @pic = Pic.new
  end

  def create
    @pic = Pic.new(pic_params)
    if @pic.save
      redirect_to pic_path(@pic)
    else
      render 'new'
    end
  end

  def show
    @pic = Pic.find(params[:id])
  end

  private

    def pic_params
      params.require(:pic).permit(:title, :description)
    end
end
