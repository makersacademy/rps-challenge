require 'sinatra/base'
require './lib/player.rb'
require './lib/game.rb'
require 'pry'

class RPSapp < Sinatra::Base

  enable :sessions
  set :session_secret, 'super secret'

  get '/' do
    erb :start
  end

  post '/' do
    p params
    player = Player.new(params[:player_name])
    @game = Game.create(player)
    redirect '/game'
  end

  before do
    @game = Game.load
  end

  get '/game' do
    if @game.round_with_result == 3;
      @game.results.confirm_winner
      erb :finish_game
    else erb :play
    end
  end

  post '/result' do
    @game.play_control(params[:type].to_sym)
    erb :result
  end

  run! if app_file == $0
end
