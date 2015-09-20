require 'sinatra/base'
require_relative 'game'

class RPSWeb < Sinatra::Base

  $previous_result = :none
  enable :sessions
  set :static, true
  set :root, File.dirname(__FILE__)
  
  get '/' do
    erb :index
  end

  post '/' do
    session[:name] = params[:name]
    redirect '/game'
  end

  get '/game' do 
    @name = session[:name]
    erb :game
  end

  get '/result' do
    human = Human.new
    computer = Computer.new
    game = Game.new
    human.choose_option(params[:choice].to_sym)
    computer.generate_turn
    if game.human_winner?(human, computer)
      @message1 = "You win" 
      @message2 = "Congratulations. Computer chose #{computer.choice}"
      $previous_result = :win
    end
    if game.human_loser?(human, computer)
      @message1 = "You lose" 
      @message2 = "Commiserations. Computer chose #{computer.choice}"
      $previous_result = :loss
    end
    if game.draw?(human, computer)
      @message1 = "Draw" 
      @message2 = "Computer chose #{computer.choice}"
      $previous_result = :draw
    end
    erb :result
  end

  # start the server if ruby file executed directly
  run! if app_file == $0

  set :views, proc { File.join(root, '..', 'views') }

end
