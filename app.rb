require 'sinatra/base'
require 'sinatra/reloader'
require './lib/player'

class RockPaperScissors < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end

  post "/name" do
    $player = Player.new(params[:name])
    redirect "/play"
   end

  get "/play" do
    @player = $player.name 
    erb :play
  end

  post "/move" do
    $move = params[:choice]
    redirect "/arena"
  end

  get "/arena" do
    @name = $player.name
    @move = $move
    erb :arena
  end

  run! if app_file == $0
end
