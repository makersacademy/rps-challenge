require "sinatra/base"
require "sinatra/reloader"
require_relative './lib/player.rb'
require_relative './lib/game.rb'

class Rts < Sinatra::Base
  enable :sessions
  $game = Game.new

  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :nameinput
  end

  post '/names' do
    $game.set_name(params["name"])
    redirect '/play'
  end

  get '/play' do
    erb :throwinput
  end

  post '/output' do
    $game.computer_choice
    $game.thrown_hands(params["Option to throw"])
    erb :output
  end

end