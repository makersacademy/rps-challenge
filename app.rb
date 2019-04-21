require 'sinatra/base'
require_relative 'lib/judge'
require_relative 'lib/player_bot'

class Rps < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    session[:player_1_name] = params[:player_1_name]
    redirect "/play"
  end

  get '/play' do
    erb :play
  end

  post '/results' do
    session[:p1_choice] = params[:p1_choice]
    @judge = Judge.new(session[:p1_choice], PlayerBot.new.choice)
    session[:outcome] = @judge.outcome
    erb :results
  end

  run! if app_file == $0
end
