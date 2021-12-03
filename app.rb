require 'sinatra/base'
require 'sinatra/reloader'
require_relative './lib/player.rb'

class RockPaperScissors < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb(:index)
  end

  post '/names' do
    $player1 = Player.new(params[:player1])
    redirect '/game'
  end

  get '/game' do
    @player1 = $player1
    erb(:game)
  end

  run! if app_file == $0
end