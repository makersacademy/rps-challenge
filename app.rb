require 'sinatra/base'
require_relative 'lib/player'
require_relative 'lib/rpsgame'

class RPS < Sinatra::Base

  enable :sessions

  before do
    @game = RPSGame.instance
  end

  get '/test' do
    "Testing infrastructure working"
  end

  get '/' do
    erb :index
  end

  get '/signin-2player' do
    erb :two_player_signin
  end

  get '/signin-1player' do
    erb :one_player_signin
  end

  post '/names' do
    session[:marketer_1] = params[:marketer_1]
    session[:marketer_2] = params[:marketer_2]
    unless session[:marketer_2]
      session[:marketer_2] = 'Bot'
    end
    redirect('/game-choice')
  end

  get '/game-choice' do
    marketer_1 = Player.new(session[:marketer_1])
    @marketer_1 = marketer_1.name
    marketer_2 = Player.new(session[:marketer_2])
    @marketer_2 = marketer_2.name
    @game = RPSGame.create(marketer_1, marketer_2)
    erb :game_choice
  end

  get '/play-rps' do
    @marketer_1 = @game.marketer_1.name
    @marketer_2 = @game.marketer_2.name
    erb :play
  end

  post '/results-rps' do
    @game.marketer_1.weapon_choice(params[:weapon])
    @game.marketer_2.weapon_choice(params[:weapon])
    redirect('/results-rps')
  end

  get '/results-rps' do
    @marketer_1 = @game.marketer_1.name
    @marketer_2 = @game.marketer_2.name
    @player_weapon = @game.marketer_1.weapon
    @bot_weapon = @game.marketer_2.weapon
    erb :result
  end

  post '/results-2p-rps' do
    @game.marketer_1.weapon_choice(params[:weapon])
    redirect('/results-2p-rps')
  end

  get '/results-2p-rps' do
    @marketer_1 = @game.marketer_1.name
    @marketer_2 = @game.marketer_2.name
    @marketer_1_points = @game.marketer_1.points
    @marketer_2_points = @game.marketer_2.points
    erb :play2
  end

  post '/results2-rps' do
    @game.marketer_2.weapon_choice(params[:weapon])
    redirect('/results2-rps')
  end

  get '/results2-rps' do
    @marketer_1 = @game.marketer_1.name
    @marketer_2 = @game.marketer_2.name
    @marketer_1_points = @game.marketer_1.points
    @marketer_2_points = @game.marketer_2.points
    @player_weapon = @game.marketer_1.weapon
    @bot_weapon = @game.marketer_2.weapon
    erb :result
  end
  # run! if app_file == $0
end
