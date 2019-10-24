require 'sinatra/base'
require_relative 'lib/player'
require_relative 'lib/game'

class Rps < Sinatra::Base

  enable :sessions
  get '/' do
    erb :home
  end

  post '/name' do
    player_1 = Player.new(params[:player_1_name])
    @game = Game.create(player_1)
    redirect '/play'
  end

  before do
    @game = Game.instance
  end

  get '/play' do
    erb :play
  end

  post '/play' do 
    erb :play
  end

  post '/rock' do
    erb :rock
  end

  post '/paper' do
    erb :paper
  end

  post '/scissors' do
    erb :scissors
  end



  run! if app_file == $0

end
