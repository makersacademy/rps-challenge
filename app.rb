# frozen_string_literal: true

require 'sinatra/base'
require './lib/rps_game'
require './lib/player'

class App < Sinatra::Base
  enable :sessions

  get '/' do
    erb :register_player
  end

  post '/do_register' do
    session[:player_name] = params[:player_name]
    redirect '/play'
  end

  get '/play' do
    @player_name = session[:player_name]
    if @player_name.to_s.empty?
      redirect '/'
    else
      erb :play
    end
  end

  post '/play' do
    erb :play
  end

  get '/logout' do
    session[:player_name] = ''
    redirect '/'
  end

  # start the server if ruby file executed directly
  run! if app_file == $PROGRAM_NAME
end
