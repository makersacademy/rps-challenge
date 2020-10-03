require 'sinatra/base'
require './lib/player.rb'
require './lib/computer.rb'
require './lib/game.rb'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/play' do
    session[:name] = params[:name]
    @name = params[:name]
    erb :play
    # redirect '/result'
  end

  get '/result' do
    @name = session[:name]
    @weapon = params[:weapon]
    @computer = Computer.new.weapon
    @player = Player.new(@name, @weapon)
    @game = Game.new(@player, @computer)
    @game.result
    erb :result
  end

end
