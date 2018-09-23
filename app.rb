require 'sinatra/base'
require './lib/decision'
require './lib/winner'

class Challenge < Sinatra::Base
  enable :sessions
  get '/' do
    erb :index
  end

  run! if app_file == $0

  post '/heyplayer' do
    p params
    session[:player1] = params[:player1]
    redirect '/make_choice'
  end

  get '/make_choice' do
    @player1 = session[:player1]
    erb :choice
  end

  post '/humanchoice' do
    p params
    session[:choice] = Decision.new(params[:choice])
    redirect '/choicemade'
  end

  get '/choicemade' do
    @choice = session[:choice]
    erb :choicemade
  end

  post '/winner' do
    @choice = session[:choice]
    @computer = ["Rock", "Paper", "Scissors"].sample
    @winner = Winner.new(@choice, @computer)
    erb :winner
  end

end
