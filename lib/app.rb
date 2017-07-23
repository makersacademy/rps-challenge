require 'sinatra/base'
require_relative 'game'
require_relative 'player'

class RPS < Sinatra::Base

  before do
    @game = Game.instance
  end

  get '/' do
    p params
    erb :homepage
  end

  post '/enter-name' do
    p params
    # (params[:play_mode]).each do
    # set instance variable for two states here
    erb :enter_name
  end

  post '/one-player' do
    @game =
    Game.add(Player.new(params[:player_1_name]))
    p params
    erb :play
  end

  # post '/two-player' do
  #   @game =
  #   Game.add((Player.new(params[:player_1_name])),(Player.new(params[:player_2_name])))
  #   erb :play
  # end

  post '/result' do
    erb :result
  end

  run! if app_file == $0
end
