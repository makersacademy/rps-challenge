require 'sinatra/base'
require 'sinatra/reloader'
require 'sinatra'
require './lib/game'
require './lib/computer'

class Rps < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    session[:player_name] = params[:player_name]
    redirect '/play'
  end

  get '/play' do
    @player_name = session[:player_name]
    # @shape = session[:shape]
    erb :play
  end

  post '/play' do
    session[:shape] = params[:shape]
    session[:rand_shape] = Computer.new.move
    redirect '/selected_options'
  end

  get '/selected_options' do
    @game = Game.new(session)
    @player = @game.name
    @playershape = @game.player_shape
    @random_shape = @game.rand_shape
    @outcome =@game.game_result
    erb :selected_option
  end


  # our routes would go here

  # # Start the server if this file is executed directly (do not change the line below)
  run! if app_file == $0
end