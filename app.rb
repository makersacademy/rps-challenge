require 'sinatra/base'
require './lib/player'
require './lib/videogame'

class Game < Sinatra::Base


  get "/" do
    erb :index
  end

  post "/name" do
    $videogame=Videogame.new(params[:name], "Matrix")
    redirect "/play"
  end

  get "/play" do
    erb :player
  end

  post "/play" do
    erb :move
  end


  run! if app_file == $0


end
