require 'sinatra/base'
require './lib/game.rb'

class RockPaperScissors < Sinatra::Base

  get '/' do
    erb(:index)
  end

  post '/new_game' do
    @game = Game.create(params[:no_of_players].to_i)
    params[:no_of_players] == '1' ? erb(:registration_1p) : erb(:registration_2p)
  end

  post '/registration' do
    @game = Game.instance
    player1_name = params[:player1_name]
    player2_name = params[:player2_name] ? params[:player2_name] : 'Computer' 
    @game.set_players(player1_name, player2_name)
    redirect('/offer_choices')
  end

  get '/offer_choices' do
    @game = Game.instance
    redirect('/check_winner') if @game.player1.choice != nil && @game.player2.choice != nil
    redirect('/computers_choice') if @game.is_current_player_computer?
    erb(:offer_choices)
  end

  get '/computers_choice' do
    @game = Game.instance
    @game.set_choice(@game.random_choice)
    erb(:computers_choice)
  end

  post '/confirmation' do
    @game = Game.instance
    @game.set_choice(params[:choice])
    erb(:confirmation)
  end

  post '/end_turn' do
    @game = Game.instance
    @game.end_turn
    redirect('/offer_choices')
  end

  get '/check_winner' do
    @game = Game.instance
    @winner = @game.check_winner
    erb(:result)
  end

  get '/end_game' do
    @game = Game.instance
    @game.set_choice(nil)
    @game.end_turn
    @game.set_choice(nil)
    @game.end_turn
    redirect('/offer_choices')
  end

  run! if app_file == $0
  set :session_secret, 'super secret'

end