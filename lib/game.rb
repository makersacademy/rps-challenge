class Game
  attr_reader :player_1, :player_2
  def initialize(player_1:, player_2: Player.new("Computer"))
    @player_1 = player_1
    @player_2 = player_2
  end

  def outcome
    return 'You Draw :|' if both_players_have_same_move?
    return player_2_wins if player_2_beat_player_1?
    player_1_wins
  end

  def self.create(player_1:, player_2: "Computer")
    @game = Game.new(player_1: Player.new(player_1),
    player_2: Player.new(player_2))
  end

  def self.instance
    @game
  end

  private
  def both_players_have_same_move?
    (@player_1.chose_rock? && @player_2.chose_rock?) ||
    (@player_1.chose_paper? && @player_2.chose_paper?) ||
    (@player_1.chose_scissors? && @player_2.chose_scissors?)
  end

  def player_2_beat_player_1?
    (@player_1.chose_rock? && @player_2.chose_paper?) ||
    (@player_1.chose_paper? && @player_2.chose_scissors?) ||
    (@player_1.chose_scissors? && @player_2.chose_rock?)
  end

  def player_2_wins
    return "You Lose :(" if @player_2.computer?
    "#{@player_2.name} Wins! :D" unless @player_2.computer?
  end

  def player_1_wins
    return "You Win! :D" if @player_2.computer?
    "#{@player_1.name} Wins! :D" unless @player_2.computer?
  end
end
