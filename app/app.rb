require 'sinatra/base'
require './lib/player'
require './lib/game'
require './lib/computer'
# require './spec/spec_helper'

class App < Sinatra::Base
enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    player = Player.new(params[:player_1])
    Game.create(player)
    redirect('/play')
  end

  get '/play' do
    @player_name = Game.instance.player_1.name
    erb :play
  end

  post '/result' do
    @game = Game.instance
    @game.player_1.weapon = params[:weapon].to_sym

    redirect '/result'
  end

  get '/result' do
      @game = Game.instance
      @game.player_1.weapon
      @result = @game.result
      p @game.player_1.weapon
      erb :lose
    end

    # start the server if ruby file executed directly
run! if app_file == $0
end
