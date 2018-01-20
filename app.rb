require 'sinatra/base'
require './lib/game.rb'

class RockPaperScissors < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    session[:player_name] = params[:player_name]
    redirect '/play'
  end

  get '/play' do
    @player_name = session[:player_name]
    erb(:play)
  end

  post '/attack' do
    session[:weapon] = params[:weapon]
    redirect ('/outcome')
  end

  get '/outcome' do
    @player_name = session[:player_name]
    @weapon = session[:weapon]
    computer = Computer.new
    @computer_weapon = computer.choose_weapon
    erb(:outcome)
  end

  run! if app_file == $0
end
