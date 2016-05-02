require 'sinatra/base'
require './lib/player'
require './lib/game'
require './lib/computer'


class RPSGame < Sinatra::Base
  enable :sessions

  before do
    @game = Game.instance
  end

  get '/' do
    erb(:index)
  end

  post '/name' do
    @player = Player.new(params[:player_name])
    @computer = Computer.new
    @game = Game.start(@computer, @player)
    redirect '/play'
  end

  get '/play' do
    @game.player.name
    erb(:play)
  end

  post '/choice' do
    session[:player_choice] = @game.player.choose(params[:choice])
    session[:computer_choice] = @game.computer.choose_at_random
    @game.add_selection(@computer_choice, @player_choice)
    redirect '/result'
  end

  get '/result' do
    @computer_choice = session[:computer_choice]
    @player_choice = session[:player_choice]
    @game.add_selection(@computer_choice, @player_choice)
    session[:winner] = @game.winner
    erb(:result)
  end

  get '/key' do
    erb(:key)
  end

  run! if app_file == $PROGRAM_NAME

end
