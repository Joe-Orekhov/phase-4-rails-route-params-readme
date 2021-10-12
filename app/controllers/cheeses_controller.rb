class CheesesController < ApplicationController

  def index
    cheeses = Cheese.all
    render json: cheeses
  end

  def show 
    # find a cheese using the id in the url
    # send a JSON responce

    render json: Cheese.all.find_by(id: params[:id]).to_json

  end

end
