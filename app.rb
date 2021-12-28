require './lib/game'
require './lib/player'
require './lib/computer'
require 'sinatra/base'
require 'sinatra/reloader'

class RockPaperScissors < Sinatra::Base
  configure :development do
    register Sinatra::Reloader 
  end
  enable :sessions 
 
  before do 
    @game = Game.instance
  end
  
  get '/' do
    erb(:index)
  end

  post '/play' do
    player_name = Player.new(params[:player_name])
    computer = Computer.new
    @game = Game.create(player_name, computer)
    redirect '/play'
  end

  get '/play' do
    erb(:play)
  end

  post '/option' do
    session[:option] = params[:option]
    redirect('/result')
  end

  get '/result' do 
    @player_option = @game.player.move(session[:option])
    @computer_option = @game.computer.option
    erb(:result)
  end
  
  # start the server if ruby file executed directly
  run! if app_file == $0
end
