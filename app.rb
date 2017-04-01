require 'sinatra/base'
require './lib/player'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    @player = Player.create(params[:player_1_name])
    redirect '/play'
  end

  before do
    @player = Player.instance
  end

  get '/play' do
    @player_1_name = @player.name
    erb(:play)
  end

  post '/attack' do
    @player_1_name = @player.name
    @player_attack_method = params[:player_attack_method]
    erb(:attack)
  end

  run! if app_file == $0
end
