require_relative 'computer.rb'

class Player

  attr_reader :opponent_attack, :name, :attack, :player_total, :computer_total
  def initialize(name)
    @name =name
    @message
    @player_total = 0
    @computer_total = 0
  end

  def play(object)
    @attack = object
    compare(Computer.new.select_object)
  end 


  def compare(computer_object)
    if @attack == computer_object
      "Computer entered #{computer_object}\n it is a draw"
    elsif  @attack == 'Rock' && computer_object == 'Paper'
      increment_total('computer')
      "Computer entered #{computer_object}\n Paper covers rock - You loose"
    elsif  @attack == 'Rock' && computer_object == 'Scissors'
      increment_total('player')
      "Computer entered #{computer_object}\n Rock bashes scissors - You win"
    elsif @attack == 'Paper' && computer_object == 'Rock'
      increment_total('player')
      "Computer entered Rock\n Paper covers Rock - You win"
    elsif @attack == 'Paper' && computer_object == 'Scissors'
      increment_total('computer')
      "Computer entered Scissors\n Scissors cuts Paper - You lose"
    elsif @attack == 'Scissors' && computer_object == "Rock"
      increment_total('computer')
      "Computer entered Rock\n Rock smashes Scissors - You lose"
    elsif @attack == 'Scissors' && computer_object == "Paper"
      increment_total('player')
      "Computer entered Paper\n Scissors cuts Paper - You win"
    end
  end 
    # should I use interpolation
    # must be a better way to write this - maybe when statements 
    def increment_total(winner)
      if winner == 'player'
        @player_total += 1
      elsif winner == 'computer'
        @computer_total += 1
      end 
    end 

 
end 