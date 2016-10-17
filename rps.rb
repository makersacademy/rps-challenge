require 'sinatra/base'
require './lib/game'

class Rps < Sinatra::Base

  before '/*' do
    @game = Game.instance
  end

  get '/' do
    erb :index
  end

  post '/name' do
    player = params[:player_name]
    @game = Game.create(player)
    redirect '/choose_your_weapon'
  end

  get '/choose_your_weapon' do
    erb(:choose_your_weapon)
  end

  post '/rock' do
    computer_chooses
    @game.who_wins(:rock, @game.computer_choice)
    declare_winner
  end

  post '/paper' do
    computer_chooses
    @game.who_wins(:paper, @game.computer_choice)
    declare_winner
  end

  post '/scissors' do
    computer_chooses
    @game.who_wins(:scissors, @game.computer_choice)
    declare_winner
  end

  get '/you_won' do
    erb(:you_won)
  end

  get '/you_lost' do
    erb(:you_lost)
  end

  get '/try_again' do
    erb(:try_again)
  end

  def declare_winner
    if @game.winner.nil?
      redirect "/try_again"
    end
    if @game.winner
      redirect "/you_won"
    else
      redirect "/you_lost"
    end
  end

  def computer_chooses
    @game.rps
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
