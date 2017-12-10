require_relative 'player'

class Game
  def self.create_new args
    @@game = Game.new args
  end

  def self.instance
    @@game
  end

  attr_reader :player_1, :player_2, :multiplayer, :curr_turn

  def initialize args
    @player_1 = args[:player_1]
    @player_2 = args[:player_2] || Player.new("AI", true)
    @multiplayer = !!args[:player_1] && !!args[:player_2]
    @curr_turn = @player_1
  end

  def make_move(choice)
    curr_turn.make_choice choice
    switch_turns
  end

  def switch_turns
    @curr_turn = (@curr_turn == player_1 ? player_2 : player_1)
  end

  def complete?
    !player_1.choice.nil? && !player_2.choice.nil?
  end

  def get_winner
    return "Draw!" if player_1.choice == player_2.choice
    if player_1.choice == "Rock"
      return "#{player_1.name} wins!" if player_2.choice == "Scissors"
      return "#{player_2.name} wins!"
    elsif player_1.choice == "Scissors"
      return "#{player_1.name} wins!" if player_2.choice == "Paper"
      return "#{player_2.name} wins!"
    elsif player_1.choice == "Paper"
      return "#{player_1.name} wins!" if player_2.choice == "Rock"
      return "#{player_2.name} wins!"
    end
  end
end
