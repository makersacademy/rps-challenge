class Game
  WEAPONS = {:rock => :rock, :paper => :paper, :scissors => :scissors}
  attr_reader :player_1, :comp_player, :turn
  attr_accessor :comp_player, :player_1, :select

  def initialize player_1, comp_player
    @player_1, @comp_player, @turn = player_1, comp_player, player_1
  end

  def opponent
    turn == player_1 ? comp_player : player_1
  end

  def comp_generator
    @comp_gen = [[:rock], [:paper], [:scissors]]
    @comp_gen.sample
  end

  def player_select(select)
    WEAPONS[select]
  end

  def comp_select
    comp_player = comp_generator
  end
end