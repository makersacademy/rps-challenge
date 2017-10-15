require 'sinatra/base'
require_relative './lib/player'
require_relative './lib/game'

class RockPaperScissors < Sinatra::Base

  before do
    @game = Game.instance
  end

  get '/infastructure' do
    "Testing Infastructure"
  end

  get '/' do
    erb(:version)
  end

  post '/opponent' do
    if params[:opponent] == "Computer"
      redirect '/one_player'
    else
      redirect '/two_player'
    end
  end

  get '/one_player' do
    erb(:one_player)
  end

  post '/name' do
    @game = Game.create(Player.new(params[:name]))
    redirect '/play'
  end

  get '/play' do
    erb(:play)
  end

  post '/result' do
    @player_choice = params[:choice].downcase
    @result = @game.result(@player_choice)
    erb(:result)
  end
end
