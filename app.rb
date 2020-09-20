require 'sinatra'
require_relative 'lib/game'

class Rps < Sinatra::Base

  get '/' do 
    erb :index
  end

  post "/name" do
    name = params[:name]
    @game = Game.create(name)

    redirect "/play"
  end

  get "/play" do
    @game = Game.instance
    erb :play
  end

  run! if app_file == $0
end