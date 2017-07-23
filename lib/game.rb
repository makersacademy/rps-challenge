class Game

  attr_reader :player_1, :player_2, :current_player, :opponent

  WINNERS = [["Rock", "Scissors"], ["Rock", "Lizard"],
            ["Paper", "Rock"], ["Paper", "Spock"],
            ["Scissors", "Paper"], ["Scissors", "Lizard"],
            ["Spock", "Rock"], ["Spock", "Scissors"],
            ["Lizard", "Paper"], ["Lizard", "Spock"]]

  LOSERS = WINNERS.map { |a, b| [b, a] }

  def initialize(player_1, player_2, mode)
    @player_1 = player_1
    @player_2 = player_2
    @mode = mode
    @current_player = @player_1
    @opponent = @player_2
  end

  def self.instance
    @game
  end

  def self.add(player_1, player_2, mode)
    @game = Game.new(player_1, player_2, mode)
  end

  def switch_turns
    @current_player = (@current_player == @player_1 ? @player_2 : @player_1)
    @opponent = (@opponent == @player_1 ? @player_2 : @player_1)
  end

  def calc_winner
    battle = [player_1.move, player_2.move]
    declare_winner(battle)
  end

  def declare_winner(battle)
    if WINNERS.include? battle
      :win
    elsif LOSERS.include? battle
      :lose
    else
      :draw
    end
  end


end
