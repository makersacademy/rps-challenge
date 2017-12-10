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
    @player_2 = args[:player_2] || Player.new("AI")
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
end
