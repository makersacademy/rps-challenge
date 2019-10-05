require 'sinatra/base'
# require 'pry'
require './lib/result'

class Game < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    session[:player_1] = params[:player_1]
    redirect '/play'
  end

  get '/play' do
    @player_1 = session[:player_1]
    erb(:play)
  end

  post '/choice' do
    $choice = params["move"]
    redirect '/result'
  end

  get '/result' do
    @game = Result.new($choice)
    @ending = @game.outcome
    erb(:ending)
  end

end
