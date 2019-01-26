require_relative 'computer'
require_relative 'player'

class Game
  attr_reader :result, :player, :computer, :comp_choice, :player_choice, :turn, :rand_message
  def initialize(player, computer = Computer.new)
    @player = player
    @player_choice 
    @computer = computer
    @comp_choice = []
    @rand_message
    @result
  end
  

  def run_game 
    @comp_choice.push(@computer.play)
    if @comp_choice[-1] == @player.show
      @result = "It's A Draw" 
    elsif (@comp_choice[-1] == "Scissors" && @player.show == "Paper") || (@comp_choice[-1] == "Rock" && @player.show == "Scissors") || (@comp_choice[-1] == "Paper" && @player.show == "Rock")
      @result = "I Win."
    else
      @result = "You Win."
    end
  end

  def rand_messages
    msg = ["What Will You Choose, ", "Have You Made Your Pick, ", "Are You Ready To Decide, ", "What Will It Be This Time, ",
    "Are You Ready, ", "Have You Considered Your Choice Carefully, ", "Will This Be Your Victory, ", "Do You Think This Is A Good Move, "]
    @rand_message = msg.sample
  end

end

