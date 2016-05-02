class Game
  attr_reader :player_1, :player_2, :message, :player_1_last_choice, :player_2_last_choice

  def initialize player_1, player_2
    @player_1 = player_1
    @player_2 = player_2
    @player_1_last_choice = nil
    @player_2_last_choice = nil
    @message = nil
  end

  def self.create player_1, player_2
    @game = Game.new player_1, player_2
  end

  def self.instance
    @game
  end

  def on player_1_choice
    @player_1_last_choice = player_1_choice
    @player_2_last_choice = ["rock", "paper", "scissor"].sample

    compare = compare @player_1_last_choice, @player_2_last_choice

    if compare == @player_1
      @player_1.win
      @message = "#{@player_1.name} wins!"
    elsif compare == @player_2
      @player_2.win
      @message = "#{@player_2.name} wins!"
    else
      @message = "It's a draw" if compare == "Draw"
    end
  end

  def compare player_1_choice, player_2_choice
    if player_1_choice == player_2_choice
      return "Draw"
    elsif player_1_choice == "paper" && player_2_choice == "rock"
      return @player_1
    elsif player_1_choice == "rock" && player_2_choice == "scissor"
      return @player_1
    elsif player_1_choice == "scissor" && player_2_choice == "paper"
      return @player_1
    else
      return @player_2
    end
  end


end
