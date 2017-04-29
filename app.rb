require 'sinatra'
require_relative './lib/player'
require './lib/game'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  before do
    next if request.path_info == '/'
    @game = Game.current_game
  end

  get '/' do
    erb(:index)
  end

  post '/names' do
    @game = Game.start(Player.new(params[:Player1]), Player.new('RosiePoSie'))
    redirect '/play'
  end

  get '/play' do
    erb(:play)
  end

  get '/rock' do
    redirect '/end_game'
    erb(:rock)
  end

  get '/paper' do
    redirect '/end_game'
    erb(:paper)
  end

  get '/scissors' do
    redirect '/end_game'
    erb(:scissors)
  end

  get '/end_game' do
    erb(:end_game)
  end
end
