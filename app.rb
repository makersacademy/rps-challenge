require 'sinatra/base'
require 'sinatra/reloader'
require_relative './lib/computer'
require_relative './lib/player'
require_relative './lib/game'

class Rps < Sinatra::Base
  enable :sessions
  configure :development do
    register Sinatra::Reloader
  end


  get '/' do
    erb :register
  end

  post '/name' do
    $player = Player.new(params[:name])
    redirect ('/play')
  end

  get '/play' do
    @name = $player.name
    @player_choice = session[:choice]
    @computer_choice = session[:computer_choice]
    erb :play
  end

  post '/play' do
    session[:choice] = params[:choice]
    session[:computer_choice] = Computer.new.choice
    redirect ('/play')
  end
end
