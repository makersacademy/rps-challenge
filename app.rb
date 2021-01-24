# frozen_string_literal: true

require 'sinatra'
require 'sinatra/base'
require 'sinatra/reloader'
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

  post '/play' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    @game = Play.new(params[:mode], player_1, player_2)
    if @game.player_2.name.empty?
      erb(:play_solo)
    else
      erb(:play_duo)
    end
  end
end
