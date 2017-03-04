class Game

  WEAPONS = [:rock, :paper, :scissors]

  attr_reader :player, :computer

  def initialize(player, computer)
    @player = player
    @computer = computer
  end

  def self.create(player, computer)
    @game = Game.new(player, computer)
  end

  def self.instance
    @game
  end

  def judge_scores(player_choice, computer_choice)
    player_result = {player_choice => computer_choice}
    computer_result = {computer_choice => player_choice}
    decision = [  {:rock => :scissors},
                  {:scissors => :paper},
                  {:paper => :rock}
                ]
    if decision.include?(player_result)
      return "#{player.name} won!"
    elsif decision.include?(computer_result)
      return "#{computer.name} won!"
    elsif player_choice == computer_choice
      "Tie game. Play again?"
    end
  end



end
