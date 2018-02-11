require 'sinatra/base'
require './lib/game'
require './lib/player'

class Rps < Sinatra::Base

  enable :sessions
  set :public_folder, File.dirname(__FILE__) + '/static'

  get '/' do 
    erb(:index)
  end

  post '/names' do 
    @player_1 = Player.new(params[:player_1_name]) 
    @player_2 = Player.new(params[:player_2_name]) 
    $game = Game.new(@player_1, @player_2)
    redirect '/play'
  end

  get '/play' do 
    erb(:play)
  end

  post '/outcome' do 
    erb(:outcome)
  end

  run! if app_file == $0
end

