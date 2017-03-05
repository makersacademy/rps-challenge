class Game

  WEAPONS = [:rock, :paper, :scissors]

  attr_reader :player, :computer, :winning_moves

  def initialize(player, computer)
    @player = player
    @computer = computer
    @winning_moves = [  {:rock => :scissors},
                        {:scissors => :paper},
                        {:paper => :rock}  ]
  end

  def self.create(player, computer)
    @game = Game.new(player, computer)
  end

  def self.instance
    @game
  end

  def judge_scores(player_choice, computer_choice)
    if winning_moves.include?(player_result(player_choice, computer_choice))
      "#{player.name} won!"
    elsif winning_moves.include?(computer_result(player_choice, computer_choice))
      "#{computer.name} won!"
    elsif player_choice == computer_choice
      "Tie game. Play again?"
    end
  end

  private

  def player_result(player_choice, computer_choice)
    {player_choice => computer_choice}
  end

  def computer_result(player_choice, computer_choice)
    {computer_choice => player_choice}
  end



end
