require_relative 'player'

class Game

  attr_reader :player, :player_choice, :computer_choice, :result

  def initialize(player)
    @player = player
    @player_choice
    @computer_choice
    @result
  end

  def self.start(player)
    @game = Game.new(player)
  end

  def play(choice)
    @computer_choice = ["Rock", "Paper", "Scissors"].sample
    @player_choice = choice
    if player_drew(@computer_choice, @player_choice)
      @result = "Draw"
    else 
      @result = who_won(@computer_choice, @player_choice)
    end
  end

  def player_drew(comp, player_choice)
    comp == player_choice
  end

  def who_won(comp, player_choice)
    if player_choice == "Rock"
      if comp == "Paper"
        "Computer wins"
      else
        "Player wins"
      end
    elsif player_choice == "Scissors"
      if comp == "Paper"
        "Player wins"
      else
        "Computer wins"
      end
    elsif player_choice == "Paper"
      if comp == "Scissors"
        "Computer wins"
      else 
        "Player wins"
      end
    end
  end

  def self.instance
    @game
  end

end