require 'sinatra/base'
require './lib/player.rb'
class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    $marketeer1 = Player.new(params[:marketeer1])
    $computer = Player.new("Computer")
    redirect '/play'
  end

  get '/play' do
    @marketeer1 = $marketeer1.name
    erb :play
  end

  post '/choice' do
    $marketeer1.choice = params[:choice]
    redirect '/result'
  end

  get '/result' do
    @marketeer1 = $marketeer1.name
    @marketeer2 = $computer.name
    @marketeer1_choice = $marketeer1.choice
    @marketeer2_choice = ["Rock", "Paper", "Scissors"].sample
    @result = rps(@marketeer1_choice, @marketeer2_choice)
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

    return "#{@marketeer2} wins"
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
