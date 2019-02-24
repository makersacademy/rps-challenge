require 'sinatra/base'
require_relative './lib/game'

class RPS < Sinatra::Base

  before { @game = Game.instance }

  get '/' do
    erb :index
  end

  post '/name' do
    if params[:name2] == ""
      @game = Game.create("1P", params[:extended], params[:name])
    else
      @game = Game.create("2P", params[:extended], params[:name], params[:name2])
    end
    redirect '/play'
  end

  get '/play' do
    @active = @game.active
    @extended = @game.extended
    erb :play
  end

  post '/move_entry' do
    if @game.mode == "1P"
      @game.move = params[:move]
      @game.move2 = @game.comp_move
    else
      if @game.active == @game.name
        @game.move = params[:move]
        @game.switch_active
        redirect '/play'
      else
        @game.move2 = params[:move]
        @game.switch_active
      end
    end
    redirect '/result'
  end

  get '/result' do
    @move, @move2 = @game.move, @game.move2
    @name, @name2 = @game.name, @game.name2
    @reason = @game.reason
    @winner = @game.winner
    erb :result
  end

  run! if __FILE__ == $0
end
