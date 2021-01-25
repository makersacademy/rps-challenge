# frozen_string_literal: true

require 'sinatra'
require 'sinatra/base'
require 'sinatra/reloader'
require './lib/bot_move'
require './lib/outcome'
require './lib/play'
require './lib/player'

# The Game class is the main game class.
class Game < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions

  get '/' do
    erb(:homepage)
  end

  post '/mode' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    session[:game] = Play.new(params[:mode], player_1, player_2)
    p session[:game]
    redirect '/players'
  end

  get '/players' do
    if session[:game].player_2.name.empty?
      redirect '/solo'
    elsif redirect '/duo_move_1'
    end
  end

  get '/solo' do
    if session[:game].mode == 'normal'
      session[:player_2_move] = bot_move('normal')
      erb :normal_solo
    else
      session[:player_2_move] = bot_move('expanded')
      erb :expanded_solo
    end
  end

  post '/solo_move' do
    session[:player_1_move] = params[:move]
    redirect '/outcome'
  end

  get '/duo_move_1' do
    if session[:game].mode == 'normal'
      erb :normal_duo_1
    else
      erb :expanded_duo_1
    end
  end

  post '/duo_move_1' do
    session[:player_1_move] = params[:move]
    redirect '/duo_move_2'
  end

  get '/duo_move_2' do
    if session[:game].mode == 'normal'
      erb :normal_duo_2
    else
      erb :expanded_duo_2
    end
  end

  post '/duo_outcome' do
    session[:player_2_move] = params[:move]
    redirect '/outcome'
  end

  get '/outcome' do
    session[:outcome] = outcome(session[:player_1_move], session[:player_2_move])
    erb :outcome
  end

end
