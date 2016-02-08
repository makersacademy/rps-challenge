require 'sinatra/base'
require './lib/player'
require './lib/computer'
require './lib/game'

class RPS < Sinatra::Base

  enable :sessions

  module Glob
    class << self
      attr_accessor :game
    end
  end


  get '/' do
    erb :index
  end

  post '/names' do
    Glob.game = Game.new
    @game = Glob.game
    @game.add_player(Player.new(params[:player1_name]))
    @game.add_player(Computer.new)
    redirect '/play'
  end

  get '/play' do
    @game = Glob.game
    erb :play
  end

  post '/choices' do
    @game = Glob.game
    @game.player1.make_choice(params[:choice])
    @game.player2.auto_choice
    redirect '/results'
  end

  get '/results' do
    @game = Glob.game
    @game.decide_result
    erb :results
  end

  post '/play_again' do
    @game = Glob.game
    @game.player2.auto_choice
    redirect '/play'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
