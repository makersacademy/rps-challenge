require 'sinatra'
require_relative './lib/player'
require './lib/game'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  before do
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
    erb(:rock)
  end

  get '/paper' do
    erb(:paper)
  end

  get '/scissors' do
    erb(:scissors)
  end
end
