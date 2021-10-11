require 'sinatra'
require 'sinatra/base'
require 'sinatra/reloader'
require './lib/game'
require './lib/player'
require './lib/weapon'
require './lib/computer'

class Rps < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  before do 
    @game = Game.instance
  end 

  get '/' do
    erb :index
  end

  post '/name' do
    weapon = Weapon.new(params[:weapon_choice])
    player = Player.new(params[:player_name], weapon)
    computer = Computer.new
    @game = Game.create(player, computer)
    redirect '/result'
  end 

  get '/result' do 
    erb :result
  end
  
  run! if app_file == $0
end