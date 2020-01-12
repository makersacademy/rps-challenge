require 'sinatra/base'
require './lib/rps'

class RockPaperScissors < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/start' do
    $player_name = params[:name]
    @name = $player_name
    erb(:start)
  end

  post '/decision' do
    @name = $name
    $game = RPS.new("Butts", move)
    @game = $game
    erb(:decision)
  end

  get '/end' do
    erb(:erb)
  end
end
