require 'sinatra/base'
require_relative './lib/player'

class RockPaperScissors < Sinatra::Base

  get '/' do
    erb(:index)
  end

  get '/start' do
    erb(:start)
  end

  post '/names' do
    $player1 = Player.new(params[:player1_name])
    redirect('/play')
  end

  get '/play' do
    @player1_name = $player1.name
    erb(:play)
  end

  run! if app_file == $0
end
