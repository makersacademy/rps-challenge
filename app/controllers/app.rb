require 'sinatra/base'
require './app/models/player'
require './app/models/game'

class RockPaperScissors < Sinatra::Base

  before do
    @game = Game.instance
  end

  configure do
    set :views, "app/views"
    set :public_dir, "public"
  end

  get '/' do
    erb :index
  end

  post '/name_received' do
    user_name = params[:Player_one]
    @game = Game.create(user_name, 'computer')
    redirect '/play'
  end

  get '/play' do
    @game.reset
    erb :play
  end

  post '/rock' do
    @game.player_one_turn(1)
    redirect '/display_choice'
  end

  post '/paper' do
    @game.player_one_turn(2)
    redirect '/display_choice'
  end

  post '/scissors' do
    @game.player_one_turn(3)
    redirect '/display_choice'
  end

  get '/display_choice' do
    erb :display_choice
  end

  get '/computer_choice' do
    'The computer picked: '
    @game.computer_turn
    erb :computer_choice
  end

end
