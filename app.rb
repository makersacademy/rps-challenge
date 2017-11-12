require 'sinatra/base'
require './lib/game'
require './lib/cpu'

class Rps < Sinatra::Base

  enable :sessions
  set :session_secret, "key"

  get '/' do
    erb(:index)
  end

  post '/name' do
    Game.save(Game.new(params[:player]))
    redirect "/play"
  end

  before do
    @game = Game.show
  end

  get '/play' do
    @display_winner = session[:choice]
    erb(:play)
  end

  post '/game' do
    session[:choice] = @game.start_game(params[:choice])
    redirect "/play"
  end

end
