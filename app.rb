require 'sinatra/base'
require './lib/player'
require './lib/computer'
require './lib/game'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name_weapon' do
    session[:player] = Player.new(params[:player].to_sym, params[:weapon].to_sym)
    redirect '/play'
  end

  get '/play' do
    @player = session[:player]
    @computer = Computer.new
    @game = Game.new(@player, @computer)
    erb :play
  end

  run! if app_file == $0
end
