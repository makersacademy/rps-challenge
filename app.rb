require "sinatra/base"

class Rps < Sinatra::Base


  # get "/" do
  #   "testing infrastructure working!"
  # end

  get "/" do
    erb :index
  end

  post "/names" do
    @player_1_name = params[:player_1_name]
    @player_2_name = "Computer"
    erb :play
  end

  run! if app_file == $0


end
