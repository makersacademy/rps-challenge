require 'sinatra/base'
require_relative 'game'

class RPSWeb < Sinatra::Base
  
  get '/' do
    erb :index
  end

  get '/greeting' do 
    @name = params[:name]
    erb :greeting
  end

  get '/game' do
    erb :game
  end

  get '/result' do
    human = Human.new
    computer = Computer.new
    game = Game.new
    human.choose_option(params[:choice].to_sym)
    computer.generate_turn
    @message = "Congratulations, you have won. Computer chose #{computer.choice}" if game.human_winner?(human, computer)
    @message = "Commiserations, you have lost. Computer chose #{computer.choice}" if game.human_loser?(human, computer)
    @message = "It's a draw, computer also chose #{computer.choice}" if game.draw?(human, computer)
    erb :result
  end

  # start the server if ruby file executed directly
  run! if app_file == $0

  set :views, proc { File.join(root, '..', 'views') }

end
