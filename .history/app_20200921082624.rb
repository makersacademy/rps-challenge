# frozen_string_literal: true

require 'sinatra/base'
require './lib/player'
require './lib/game'
class RPS < Sinatra::Base
  enable :sessions
  before do
    @game = Game.instance
  end

  get '/' do
    erb :index
  end

  post '/name' do
    @game = Game.create(Player.new(params[:name]))
    redirect '/play'
  end

  get '/play' do
    @game = Game.instance
    erb :play
  end

  post '/move' do
    @game.player.move = params[:move]
    @game.bot
    redirect '/result'
  end

  get '/result' do
    erb :result
  end

  post '/newgame' do
    @game = Game.instance
    redirect '/play'
  end

  run! if app_file == $PROGRAM_NAME
end
