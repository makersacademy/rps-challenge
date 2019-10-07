# frozen_string_literal: true

require 'sinatra/base'
require './lib/game'
require './lib/player'
require './lib/computer'

class App < Sinatra::Base
  enable :sessions

  before do
    @game = Game.instance
  end

  get '/' do
    erb :register_player
  end

  post '/names' do
    @game = Game.create(Player.new(params[:player_1_name]))
    redirect '/play'
  end

  get '/play' do
    @game.player_1.name
    @game.player_2.name
    if @game.player_1.name.empty?
      erb :no_name_error
    else
      erb :play
    end
  end

  post '/do_play' do
    @game.player_2.update_rand(params[:choice])
    @game.player_1.choice = params[:move]
    erb :result
  end

  get '/logout' do
    session[:player_name] = ''
    redirect '/'
  end

  run! if app_file == $PROGRAM_NAME
end
