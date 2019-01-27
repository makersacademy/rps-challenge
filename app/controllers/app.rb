require 'sinatra/base'
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
    @game = Game.create(params[:Player])
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
    @game.computer_turn
    erb :computer_choice
  end

end
