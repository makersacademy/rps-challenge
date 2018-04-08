require 'sinatra'
require_relative '../lib/player'
require_relative '../lib/computer'

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

  get '/play_rock' do
    p @name = session[:name]
    computer = Computer.new
    p @computer_choice = computer.computer_choice_method
    erb :play_rock
  end

  get '/play_paper' do
    @name = session[:name]
    computer = Computer.new
    p @computer_choice = computer.computer_choice_method
    erb :play_paper
  end

  get '/play_scissors' do
    @name = session[:name]
    computer = Computer.new
    p @computer_choice = computer.computer_choice_method
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
