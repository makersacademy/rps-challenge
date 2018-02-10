require 'sinatra/base'
require './lib/player'

class Game < Sinatra::Base

  get "/" do
    erb :index
  end

  post "/name" do
    @name=params[:name]
    erb :player
  end

  run! if app_file == $0


end
