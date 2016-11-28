require 'sinatra/base'
require './lib/player'
require './lib/computer'
require './lib/game'

class RPS < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    session[:name], @name = params[:player_name]
    redirect '/play'
  end

  get '/play' do
    @name = session[:name]
    erb(:play)
  end

  post '/round' do
    @player_choice = params[:RPS]
    @player = Player.new(session[:name], @player_choice)


    @computer = Computer.new
    @computer_choice = @computer.choice

    @game = Game.new(@player, @computer)
    

    @winner = @game.winner
    erb(:outcome)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
