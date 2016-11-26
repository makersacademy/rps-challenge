require 'sinatra/base'
require_relative 'player.rb'
require_relative 'computer.rb'

class RockPaperScissors < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/enter_names' do
    player = Player.new(params[:human_player1])
    computer = Computer.new(params[:computer])
    game = Game.new(player,computer)
    redirect to('/game')
  end

  get '/game' do
    erb(:options)
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end
