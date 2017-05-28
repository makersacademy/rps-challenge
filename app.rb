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
    random_choice.picked_randomly
  end


  def rule(button)
    choice = automated_choice
    if button.beats(choice)
      return "Randomizer: #{choice.name}, You: #{button.name}: You won"
    elsif choice.beats(button)
      return "Randomizer: #{choice.name}, You: #{button.name}: You lost"
    else
      return "Randomizer: #{choice.name}, You: #{button.name}: The game is equal, play again"
    end
  end

  post '/rock' do
    "This is rock"
    rule(Item.rock)
  end

  post '/paper' do
    "This is paper"
    rule(Item.paper)
  end

  post '/scissors' do
    "This is scissors"
    rule(Item.scissors)
  end

run! if $0 == __FILE__
end
