require 'sinatra/base'
require_relative 'lib/player'
require_relative 'lib/game'
require_relative 'lib/score'

class RPSLS < Sinatra::Base

  before do
    @game = Game.instance
    @p1_score = Score.instance
    @p2_score = Score.instance
  end

  get '/' do
    erb :login
  end

  post '/names' do
    @player_1, @player_2 = params[:p1], params[:p2]
    @game = Game.create(@player_1, @player_2)
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  post '/selection' do
    @game.p1_choice(params[:selection])
    @game.randomiser
    @game.compare
    redirect '/play'
  end

  post '/reset' do
    @game.reset
    redirect '/play'
  end
  
  post '/end' do
    @game.reset
    redirect '/'
  end

  run! if app_file == $0

end
