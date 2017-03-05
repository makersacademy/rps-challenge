require 'sinatra/base'
require './lib/game'
require './lib/player'
require './lib/computer'

class Rps < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/new-game' do
    @game = Game.create(Player.new(params[:name]))
    erb :new_game
  end

  before do
    @game = Game.instance
  end

  get '/play-again' do
    erb :new_game
  end

  post '/result' do
    @game.player.choose_option((params[:option]).to_sym)
    @random_option = Computer.new.option(@game.options)
    @winner = @game.declare_winner(@random_option)
    erb :result
  end

  run! if app_file == $0

end
