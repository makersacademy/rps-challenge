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

  post '/play_rock' do
    p @name = session[:name]
    computer = Computer.new
    p @computer_choice = computer.computer_choice_method
    erb :play_rock
  end

  post '/play_paper' do
    @name = session[:name]
    computer = Computer.new
    p @computer_choice = computer.computer_choice_method
    erb :play_paper
  end

  post '/play_scissors' do
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

end
