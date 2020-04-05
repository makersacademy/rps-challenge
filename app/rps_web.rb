require 'sinatra/base'
require_relative '../lib/game.rb'

class RPSWeb < Sinatra::Base 
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    the_player = Player.new(params[:name])
    computer = Computer.new
    @game = Game.create(the_player, computer)
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

  post '/choice' do
    @move = params[:move]
    @game.player.move = @move.to_sym
    erb :choice
  end

  get '/result' do
    @game.set_result
    erb :result
  end

end
