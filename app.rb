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

  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    session[:game] = Play.new(params[:mode], player_1, player_2)
    redirect '/game'
  end

  get '/game' do
    case session[:game].mode
      when 'normal_solo'
        erb :normal_solo
      when 'expanded_solo'
        erb :expanded_solo
      when 'normal_duo'
        erb :normal_duo
      when 'expanded_duo'
        erb :expanded_duo
    end
  end

  post '/move' do
    case session[:game].mode
      when 'normal_solo'
        session[:first_move] = params[:move]
        session[:second_move] = bot_move('normal')
      when 'expanded_solo'
        session[:first_move] = params[:move]
        session[:second_move] = bot_move('expanded')
      when 'normal_duo'
        erb :normal_duo
      when 'expanded_duo'
        erb :expanded_duo
    end

    redirect '/outcome'
  end

  get '/outcome' do

  end

end
