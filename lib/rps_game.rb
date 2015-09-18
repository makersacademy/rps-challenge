require_relative 'player'

class RPSGame

  attr_reader :player_1

  def initialize
    @player_1 = Player.new
  end


  def play choose
    @player1_choice = choose
    case
      when @player1_choice == "rock" && self.computer == "paper"
        @player_1.lost
      when @player1_choice == "rock" && self.computer == "scissors"
        @player_1.win

      when @player1_choice == "paper" && self.computer == "rock"
        @player_1.win

      when  @player1_choice == "paper" && self.computer == "scissors"
        @player_1.lost

      when @player1_choice == "scissors"  && self.computer == "rock"
        @player_1.lost

      when @player1_choice == "scissors" && self.computer == "paper"
        @player_1.win

      when  @player1_choice == "rock" && self.computer == "rock"
        @player_1.tie

      when @player1_choice == "paper" && self.computer == "payer"
        @player_1.tie

      else @player1_choice == "scissors" && self.computer == "scissors"
        @player_1.tie
    end
  end

  def computer
    ["rock", "paper", "scissors"].sample
  end

end
