require 'sinatra'
require './lib/randomiser'

class RPS < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    session[:name]= params[:player_name]
    redirect '/play'
  end

  get '/play' do
    @name = session[:name]
    erb :play
  end

  def automated_choice
    random_choice = Randomiser.new
    puts "new_choice"
    random_choice.picked_randomly
  end



  def rule(button)
    choice = automated_choice
    if choice == "Rock" && button == 'Rock'
      return "Randomizer: #{choice}, You: #{button}: The game is equal, play again"
    elsif choice == "Rock" && button == 'Paper'
      return "Randomizer: #{choice}, You: #{button}: You won"
    elsif choice == "Rock" && button == 'Scissors'
      return "Randomizer: #{choice}, You: #{button}: You lost"
    elsif choice == "Paper" && button == 'Paper'
      return "Randomizer: #{choice}, You: #{button}: The game is equal, play again"
    elsif choice == "Paper" && button == 'Rock'
      return "Randomizer: #{choice}, You: #{button}: You lost"
    elsif choice == "Paper" && button == 'Scissors'
      return "Randomizer: #{choice}, You: #{button}: You won"
    elsif choice == "Scissors" && button == 'Scissors'
      return "Randomizer: #{choice}, You: #{button}: The game is equal, play again"
    elsif choice == "Scissors" && button == 'Paper'
      return "Randomizer: #{choice}, You: #{button}: You lost"
    elsif choice == "Scissors" && button == 'Rock'
      return "Randomizer: #{choice}, You: #{button}: You won"
    else
      return "Error: #{choice}, #{button}"
  end
  end

  post '/rock' do
    "This is rock"
    rule('Rock')
  end

  post '/paper' do
    "This is paper"
    rule('Paper')
  end

  post '/scissors' do
    "This is scissors"
    rule('Scissors')
  end

run! if $0 == __FILE__
end
