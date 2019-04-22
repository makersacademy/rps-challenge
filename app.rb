require 'sinatra/base'
require-relative './lib/player'
require-relative './lib/game'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/play' do
    session[:player] = params[:player]
    redirect '/play'
  end

  get '/play' do
    @player = session[:player]
    erb(:play)
  end

  post '/RPS-choice' do
    session[:choice] = params[:choice]
    redirect '/selected_choice'
  end

  get '/selected_choice' do
    @choice = session[:choice]
    @player = session[:player]
    erb(:selected_choices)
  end

  run! if app_file == $0
end
