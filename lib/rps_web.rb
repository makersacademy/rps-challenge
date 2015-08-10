require 'sinatra/base'
require_relative 'game'

class RPSWeb < Sinatra::Base
  
  get '/' do
    erb :index
  end

  get '/game' do
    $Player1 = Player.new
    $Player2 = Player.new
    $GAME = Game.new($Player1, $Player2)
    @name = params[:name]
    session[:name] = @name
    erb :game
  end

  post '/results' do
    @name = session[:name]
    @choice = params[:weapon]
    $Player1.choose(@choice)
    @computer = $Player2.choose(computer_choice)
    @result = $GAME.result 
    erb :results
  end

  def computer_choice
    options.sample
  end

  def options
    ['Rock', 'Paper', 'Scissors']
  end

  set :views, Proc.new { File.join(root, "..", "views") }
  # start the server if ruby file executed directly
  run! if app_file == $0
end
