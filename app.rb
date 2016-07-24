require 'sinatra/base'
require './lib/game'

class Rps < Sinatra::Base
  get '/' do
    erb(:index)
  end

  post '/fight' do
    @player_name = params[:player_name]
    erb(:fight)
  end

  post '/outcome' do
    @game = Game.new(params[:player_weapon])
    if @game.fight == :win
      erb(:win)
    elsif @game.fight == :lose
      erb(:lose)
    else
      erb(:draw)
    end
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end
