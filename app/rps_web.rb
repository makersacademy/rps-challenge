require 'sinatra/base'
require 'sinatra/reloader'
require_relative '../lib/player'
require_relative '../lib/game'
require_relative '../lib/computer'
require_relative '../lib/controller'

class RPSApp < Sinatra::Base
  enable :sessions

  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :game
  end

  post '/setup' do
    session[:player_name] = params[:player_name]
    redirect '/play'
  end

  get '/play' do
    @player_name = session[:player_name]
    erb :setup
  end

  post '/calc' do
    session[:weapon] = params[:weapon]
    redirect '/result'
  end

  get '/result' do
    #can i extract these two lines elsewhere?
    cpu = Computer.new('cpu')
    controller = Controller.new
    @result = controller.new_game(Player.new('',session[:weapon]),Computer.new('cpu'))
    @weapon = session[:weapon]
    @cpu_weapon = cpu.weapon
    @player_name = session[:player_name]
    erb @result
  end
  
  run! if app_file == $0
end