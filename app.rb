require 'sinatra/base'
require_relative 'lib/rps'

class App < Sinatra::Base
  enable :sessions
  set :session_secret, "TEST_DO_NOT_USE_IN_PRODUCTION"

  get '/' do
    erb(:welcome)
  end

  post '/start' do
    rps = RockPaperScissors.new(params[:name])
    session[:rps] = rps
    redirect('/play')
  end

  get '/play' do
    redirect('/') unless session[:rps]
    rps = session[:rps]
    @player_name = rps.name
    @player_score = rps.player_score
    @computer_score = rps.computer_score
    erb(:play)
  end

  get '/action' do
    redirect('/') unless session[:rps]
    rps = session[:rps]
    @player_name = rps.name
    @player_choice = params[:choice]
    @computer_choice = rps.random_choice
    @result = rps.action(@player_choice, @computer_choice)
    erb(:result)
  end

  run! if app_file == $0
end
