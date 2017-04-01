require 'sinatra/base'
require './lib/player'
require './lib/game'
require './lib/automated_opponent'

class RockPaperScissorsLizardSpock < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    @player = Player.create(params[:player_name])
    redirect to('/play')
  end

  get '/play' do
    @player = Player.instance
    erb(:play)
  end

  post '/decider' do
    @player_choice = Player.instance.player_choice(params[:choice])
    @computer_choice = AutomatedOpponent.create
    @game_result = Game.create(params[:choice], AutomatedOpponent.instance.automated_choice)
    redirect to('/results')
  end

  get '/results' do
    @player = Player.instance
    @computer_choice = AutomatedOpponent.instance.automated_choice
    @game_result = Game.instance.result
    erb(:results)
  end

  run! if app_file == $0
end
