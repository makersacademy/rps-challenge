require 'sinatra/base'
require_relative './lib/game.rb'
require_relative './lib/player.rb'

class Rps < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/players' do
    case params[:action]
    when "single_player" then @game = Game.create(1)
    when "multiplayer" then @game = Game.create(2)
    end
    erb(:enter_name)
  end

  post '/name' do
    @game = Game.instance
    case @game.number_of_players
    when 1 then @game.save_name(params[:player1_name])
    when 2 then @game.save_name(params[:player1_name], params[:player2_name])
    end
    redirect '/play'
  end

  get '/play' do
    @game = Game.instance
    erb(:play)
  end

  post '/move' do
    @game = Game.instance
    case params[:action]
    when 'grass' then @game.save_move('Bulbasaur', @game.move_counter)
    when 'water' then @game.save_move('Squirtle', @game.move_counter)
    when 'fire' then @game.save_move('Charmander', @game.move_counter)
    end

    if @game.number_of_players == 2 && @game.move_counter == 2
      redirect '/play'
    end
    redirect 'winner'
  end

  get '/winner' do
    @game = Game.instance
    @game.determine_winner
    erb(:winner)
  end

end
