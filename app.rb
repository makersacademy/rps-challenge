require 'sinatra/base'
require_relative './lib/marketeer'
require_relative './lib/opponent'

class RockPaperScissors < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    session[:name] = (params[:name])
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  post '/result' do
    session[:marketeer_choice] = params[:object].downcase.to_sym
    session[:opponent_choice] = Opponent.new.opponent_choice
    redirect '/result'
  end

  get '/result' do
    @marketeer = Marketeer.new(session)
    erb :result
  end

  run! if app_file == $0
end
