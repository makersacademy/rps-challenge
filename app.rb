require 'sinatra/base'
require_relative './lib/rps'

class RpsApp < Sinatra::Base
  set :session_secret, 'secret sessions be secret'
  enable :sessions

  before do
    @game = RPS.instance
  end

  get '/' do
    erb(:index)
  end

  post '/names' do
    @player_1 = Player.new(params[:player_1])
    @game = RPS.create(@player_1)
    redirect '/play'
  end

  get '/play' do
    erb(:play)
  end

  get '/result' do
    @result = @game.calculate_winner(params[:move], ["Rock", "Paper", "Scissors"].sample)
    erb(:result)
  end

end
