require 'sinatra/base'
require_relative '../lib/game.rb'

class RPSWeb < Sinatra::Base 
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    player = Player.new(params[:name])
    computer = Computer.new
    @game = Game.create(player, computer)
    redirect '/choose'
  end

  before do
    @game = Game.instance
  end

  get '/choose' do
    @player_name = @game.player.name
    erb :choose
  end

  post '/choose' do
    redirect '/choose'
  end

  post '/result' do
    erb :result
  end

end
