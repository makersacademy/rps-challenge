require 'sinatra/base'
require_relative './lib/game'

class Rocky < Sinatra::Base

  before do
    @game = Game.current_game
  end

  get '/' do
    erb :index
  end

  post '/name' do
    Game.create_game(params[:player_name])
    redirect '/play'
  end

  get '/play' do
    erb :play, {
      locals: {
        player_name: @game.player, 
        weapons: @game.weapons 
        } 
      }
  end

  post '/calculate' do
    @game.play(params[:weapon])
    redirect '/result'
  end
    
  get '/result' do
    erb @game.result, { 
      locals: {
        player_name: @game.player,
        result: @game.result,
        player_choice: @game.player_choice,
        comp_choice: @game.comp_choice
        } 
      }
  end

end
  