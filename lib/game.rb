class Game

  attr_reader :player1

  def initialize(player1)
    @player1 = player1
    @computer_pick = ['Rock', 'Paper', 'Scissors']
  end

  def self.create(player1)
    @game = Game.new(player1)
  end

  def self.instance
    @game
  end

  def player_move(choice)
    @choice = choice
  end

  def computer_choice
    @computer_pick.sample
  end

  def result
    if @choice == computer_choice
      "It's a Draw!"
    else
      case computer_choice
      when "Rock"
        @choice == "Paper" ? "Paper beats Rock, You Win!" : "Rock beats Scissors, You Lose!"
      when "Paper"
        @choice == "Rock" ? "Paper beats Rock, You Lose!" : "Scissors beats Paper, You Win!"
      when "Scissors"
        @choice == "Paper" ? "Scissors beats Paper, you Lose!" : "Rock beats Scissors, you Win!"
      end
     end
  end

end
