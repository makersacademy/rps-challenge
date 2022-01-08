require 'sinatra/base'
require 'sinatra/reloader'
require_relative './lib/player'
require_relative './lib/game'

class RPSGame < Sinatra::Base
  enable :sessions

  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end

  post '/names' do
    # I promise to never use global variables in tech tests
    player = Player.new(params[:player_1_name].capitalize)
    $game = Game.new(player.name)
  
    redirect '/play'
  end

  get '/play' do
    @game = $game
    
    erb :play
  end

  post '/attackchoice' do
    session[:attack] = params[:attack]

    redirect '/attack'
  end

  get '/attack' do
    @attack = session[:attack]
    @computer_move = $game.computer_move

    erb :attack
  end

  run! if app_file == $0
end
