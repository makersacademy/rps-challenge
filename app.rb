require 'sinatra/base'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    session[:marketeer1] = params[:marketeer1]
    redirect '/play'
  end

  get '/play' do
    @marketeer1 = session[:marketeer1]
    erb :play
  end

  post '/choice' do
    session[:choice] = params[:choice]
    redirect '/result'
  end

  get '/result' do
    @marketeer1 = session[:marketeer1]
    @marketeer1_choice = session[:choice]
    @computer_choice = ["Rock", "Paper", "Scissors"].sample
    @result = rps(@marketeer1_choice, @computer_choice)
    erb :result
  end

  def rps(choice1, choice2)
    winning_moves = {
      'Rock' => 'Scissors',
      'Scissors' => 'Paper',
      'Paper' => 'Rock'
    }
    return "It's a draw" if choice1 == choice2

    return "#{@marketeer1} wins" if winning_moves[choice1] == choice2

    return "Computer wins"
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
