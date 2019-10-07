require_relative 'game'
require_relative 'computer'

class Results

  def outcome
    if @player_1.move == 'rock' && @computer.computer_move == 'scissors'
      puts "#{@player_1} Wins!"
    elsif @player_1.move == 'scissors' && @computer.computer_move == 'paper'
        puts "#{@player_1} Wins!"
      elsif @player_1.move == 'paper' && @computer.computer_move == 'rock'
        puts "#{@player_1} Wins!"
      elsif @computer.computer_move == 'rock' && player_1.move == 'scissors'
        puts "#{@computer} Wins!"
      elsif @computer.computer_move == 'scissors' && player_1.move == 'paper'
        puts "#{@computer} Wins!"
      elsif @computer.computer_move == 'paper' && player_1.move == 'rock'
        puts "#{@computer} Wins!"
      elsif @player_1.move == 'rock' && @computer.computer_move == 'rock'
        puts "It's a draw"
      elsif @player_1.move == 'paper' && @computer.computer_move == 'paper'
        puts "It's a draw"
      else @player_1.move == 'scissors' && @computer.computer_move == 'scissors'
        puts "It's a draw"
    end
  end
end
