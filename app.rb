require 'sinatra/base'
require_relative 'lib/judge'

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

  post '/choice' do
    #store params and redirect to a get
  end

  post '/results' do
    session[:p1_choice] = params[:p1_choice]
    #session[:p2_choice] = params[:p2_choice]
    # Random.new.choice
    @judge = Judge.new(session[:p1_choice], "Paper")
    session[:outcome] = @judge.outcome
    erb :results
  end

  run! if app_file == $0
end
