require 'sinatra/base'
require_relative './lib/rps_game'

class RPSApp < Sinatra::Base
  enable :sessions

  before do
    @game = RPSGame.instance
  end

  get '/' do
    erb(:registration)
  end

  post '/rps-config' do
    session[:name] = params[:name]
    redirect '/rps-game'
  end

  get '/rps-game' do
    @name = session[:name]
    erb(:game)
  end

  post '/rps-play' do
    result = @game.play(params[:choice])
    session[:outcome] = result[:outcome]
    session[:choice] = params[:choice]
    session[:opponent] = result[:opponent]
    redirect '/rps-outcome'
  end

  get '/rps-outcome' do
    @outcome = session[:outcome]
    @choice = session[:choice]
    @opponent = session[:opponent]
    erb(:outcome)
  end
end
