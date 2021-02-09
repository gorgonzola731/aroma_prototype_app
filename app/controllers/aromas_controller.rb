class AromasController < ApplicationController
  def index
    @aromas = Aroma.all
  end

  def new
    @aroma = Aroma.new
  end

  def create
    Aroma.create!(aroma_params)
    redirect_to aromas_path
  end

  def edit
    @aroma = Aroma.find(params[:id])
  end

  def update
    aroma = Aroma.find(params[:id])
    aroma.update(aroma_params)
    redirect_to aromas_path
  end


  def destroy
    aroma = Aroma.find(params[:id])
    aroma.destroy
    redirect_to aromas_path
  end

  private
  def aroma_params
    params.require(:aroma).permit(:aroma_name, :explain, :image)
  end
end
