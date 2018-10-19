require 'sinatra/base'
require_relative './lib/game'
require_relative './lib/player'

class RPS < Sinatra::Base

enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    marketeer = Player.new(params[:marketeer])
    $game = Game.new(marketeer)
    redirect to('/play')
  end

  get '/play' do
    @marketeer = $game.marketeer.name
    erb :play
  end

  post '/rock_response' do
    if $game.computer_choice == 'Paper'
      redirect to('/lose')
    elsif $game.computer_choice == 'Rock'
      redirect to('/draw')
    elsif $game.computer_choice == 'Scissors'
     redirect to('/win')
   end
  end

  post '/paper_response' do
    if $game.computer_choice == 'Paper'
      redirect to('/draw')
    elsif $game.computer_choice == 'Rock'
      redirect to('/win')
    elsif $game.computer_choice == 'Scissors'
     redirect to('/lose')
   end
  end

  post '/scissors_response' do
    if $game.computer_choice == 'Paper'
      redirect to('/win')
    elsif $game.computer_choice == 'Rock'
      redirect to('/lose')
    elsif $game.computer_choice == 'Scissors'
     redirect to('/draw')
    end
  end

  get '/win' do
    erb :win
  end

  get '/lose' do
    erb :lose
  end

  get '/draw' do
    erb :draw
  end

  run! if app_file == $0

end
