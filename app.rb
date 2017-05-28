require "sinatra/base"
require "./lib/player"

class RockPaperScissor < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    session[:player1] = params[:player1]
    redirect to('/play')
    erb :play
  end

  get '/play' do
    @player1 = session[:player1]
    erb :play
  end

  get '/rock' do
    @player1 = session[:player1]
    erb :rock
  end

  get '/paper' do
    @player1 = session[:player1]
    erb :paper
  end

  get '/scissors' do
    @player1 = session[:player1]
    erb :scissors
  end

  run! if app_file ==$0
end
