require 'sinatra/base'
require_relative './lib/player'
require_relative './lib/game'
require_relative './lib/version'

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
    redirect Version.new.version_path(params[:opponent])
  end

  get '/one_player' do
    erb(:one_player)
  end

  get '/two_player' do
    erb(:two_player)
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
