class SearchesController < ApplicationController
  def new
    @search = Search.new
    @colleges = Player.all.uniq.pluck(:college)
  end
  def create
    @search = Search.create(search_params)
    redirect_to @search
  end
  def show
    @search = Search.find(params[:id])
  end
  def search_params
    params.require(:search).permit(:keywords, :min_height, :max_height, :min_weight, :max_weight, :born, :college )
  end

end
