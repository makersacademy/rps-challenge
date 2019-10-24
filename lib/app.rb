require 'sinatra/base'

class Rps < Sinatra::Base

  get '/' do
    'Test!'
    redirect '/enter-name'
  end

  get '/enter-name' do
    erb :name_form
  end

  post '/display-name' do
    @name = params[:name]
    erb :display
  end

  before do
    computer = Computer.new
    @com_value = computer.computer_choice
    @outcome = "-"
  end

  post '/rock' do

    if @com_value == "Rock"
      @outcome = "Its a draw"
    elsif @com_value == "Paper"
      @outcome = "You Loose!"
    elsif @com_value == "Scissors"
      @outcome = "You win!"
    end

    erb :rock
  end

  post '/paper' do

    if @com_value == "Rock"
      @outcome = "You win!"
    elsif @com_value == "Paper"
      @outcome = "Its a draw!"
    elsif @com_value == "Scissors"
      @outcome = "You Loose!"
    end

    erb :paper
  end

  post '/scissors' do

    if @com_value == "Rock"
      @outcome = "You Loose!"
    elsif @com_value == "Paper"
      @outcome = "You Win!"
    elsif @com_value == "Scissors"
      @outcome = "Its a draw!"
    end

    erb :scissors
  end
end


class Computer
  def computer_choice
    @choice = ["Rock", "Paper", "Scissors"].sample
  end
end
