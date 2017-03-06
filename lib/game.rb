class Game

  WEAPONS = [:rock, :paper, :scissors]

  attr_reader :player, :computer, :winning_moves, :result

  def initialize(player, computer)
    @player = player
    @computer = computer
    @winning_moves = [  {:rock => :scissors},
                        {:scissors => :paper},
                        {:paper => :rock}  ]
    @result = nil
  end

  def self.create(player, computer)
    @game = Game.new(player, computer)
  end

  def self.instance
    @game
  end

  def self.player_name
    @game.player.name
  end

  def judge_scores(player_choice, computer_choice)
    if winning_moves.include?(player_result(player_choice, computer_choice))
      @result = :win
    elsif winning_moves.include?(computer_result(player_choice, computer_choice))
      @result = :lose
    elsif player_choice == computer_choice
      @result = :tie
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
