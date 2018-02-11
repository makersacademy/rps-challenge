require 'sinatra/base'
require './lib/game'
require './lib/player'
require './lib/bot'

class Rps < Sinatra::Base

  enable :sessions
  set :public_folder, File.dirname(__FILE__) + '/static'

  get '/' do 
    erb(:index)
  end

  post '/names' do 
    @player_1 = Player.new(params[:player_1_name]) 
    @player_2 = Player.new(params[:player_2_name]) 
    @player_2 = Bot.new if params[:player_2_name].empty?
    $game = Game.new(@player_1, @player_2)
    redirect '/play'
  end

  get '/play' do 
    erb(:play)
  end

  post '/outcome' do 
    $game.player_1.choice = params[:player_1_weapon]
    $game.player_2.choice = params[:player_2_weapon] unless $game.player_2.is_a?(Bot)
    redirect '/result'
  end

  get '/result' do 
    erb(:outcome)
  end

  run! if app_file == $0
end
