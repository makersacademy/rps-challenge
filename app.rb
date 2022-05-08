require 'sinatra/base'
require 'sinatra/reloader'

class RPS < Sinatra::Base 
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :form 
  end

  post '/name' do
    @name = params[:name1]
    erb :game_choices
  end

  post '/game' do
    game = Game.new 
    @player_move = params[:choice] 
    @computer_move = game.computer_choice 
    p game.result(@player_move, @computer_move)
  end

  run! if app_file == $0
end


class Game
  def computer_choice
    cc = (1 + rand(3))
    case cc
    when 1
      choice = "rock"
    when 2
      choice = "paper"
    when 3
      choice = "scissors"
    end
  end

  def result(user_input, choice)
  if user_input == choice
    puts "I chose #{choice} too. It's a tie. Let's try again."
  else
    if user_input == "rock" && choice == "paper"
      puts "I chose paper. Paper wraps rock. I win."
    elsif user_input == "rock" && choice == "scissors"
      puts "I chose scissors. Rock destroys scissors. You win."
    elsif user_input == "paper" && choice == "rock"
      puts "I chose rock. Paper wraps rock. You win."
    elsif user_input == "paper" && choice == "scissors"
      puts "I chose scissors. Scissors cut paper. I win."
    elsif user_input == "scissors" && choice == "rock"
      puts "I chose rock. Rock destroys scissors. I win."
    elsif user_input == "scissors" && choice == "paper"
      puts "I chose paper. Scissors cut paper. You win."
    else
      puts "I didn't understand you. Please try again."
    end #end nested if statement
  end #end if statement
  end 
end #end game class