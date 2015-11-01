require 'sinatra/base'
require './lib/game'

class RPS < Sinatra::Base
  enable :sessions
  get '/' do
    'Welcome to Rock Paper Scissors!'
    erb(:index)
  end

  post '/form' do
    session[:username] = params[:username]
    redirect('/play')
  end

  get '/play' do
    @username = session[:username]
    erb(:play)
  end

  post '/decision' do
    session[:decision] = params[:rock] unless (params[:rock]).nil?
    session[:decision] = params[:paper] unless (params[:paper]).nil?
    session[:decision] = params[:scissors] unless (params[:scissors]).nil?
    redirect('/player_decision')
  end

  get '/player_decision' do
    @username = session[:username]
    @decision = session[:decision]
    erb(:player_decision)
  end

  get '/outcome' do
    @username = session[:username]
    @decision = session[:decision]
    @computer_decision = Game.new.choose
    erb(:outcome)
  end
  # start the server if ruby file executed directly
  run! if app_file == $PROGRAM_NAME
end
