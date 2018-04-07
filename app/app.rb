require 'sinatra'
require_relative '../lib/player'

class RPS < Sinatra::Base
  configure do
    enable :sessions
    set :session_secret, 'key'
  end
  set :root, File.dirname(__FILE__)
  run! if app_file == $0

  get '/' do
    erb(:index)
  end

  # get '/play' do
  #   @name = session[:name]
  #   @computer_choice = ["rock", "paper", "scissors"].sample
  #   erb :play2
  # end

  get '/play_rock' do
    @name = session[:name]
    @computer_choice = ["rock", "paper", "scissors"].sample
    erb :play_rock
  end

  get '/play_paper' do
    @name = session[:name]
    @computer_choice = ["rock", "paper", "scissors"].sample
    erb :play_paper
  end

  get '/play_scissors' do
    @name = session[:name]
    @computer_choice = ["rock", "paper", "scissors"].sample
    erb :play_scissors
  end


  post '/names' do
    p session[:name] = params[:name]
    @name = session[:name]
    erb(:play)
  end

  post '/rock' do
    @name = session[:name]
    @player_choice = session[:player_choice]
    erb :rock
  end

  post '/paper' do
    @name = session[:name]
    @player_choice = session[:player_choice]
    erb :paper
  end

  post '/scissors' do
    @name = session[:name]
    @player_choice = session[:player_choice]
    erb :scissors
  end

end
