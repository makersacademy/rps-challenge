require 'sinatra/base'
require './lib/game'

class RpsGame < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    session[:name] = params[:name]
    redirect '/play'
  end

  get '/play' do
    @name = session[:name]
    erb(:play)
  end

  get '/outcome' do
    session[:choice] = params[:choice]
    @name = session[:name]
    @game = Game.new(@name)
    @game.computer_turn
    @game.outcome(session[:choice])
    @game.winner
    erb(:outcome)
  end
end
