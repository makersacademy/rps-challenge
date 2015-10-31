require_relative 'round'
require_relative 'computer'
require_relative 'player'

class Game

  attr_reader :singleplayer, :round_history, :p1, :p2

  def initialize(player1, player2=Computer.new, round=Round)
    @p1 = player1
    @p2 = player2
    @round = round
    @round_history = []
    @singleplayer = @p2.name=='Computer' ? true : false
  end

  def fight
    @round_history << @round.new(@p1, @p2)
    @round_history.last.find_winner
  end

  def p1_name
    @p1.name
  end

  def p2_name
    @p2.name
  end

  def select(player, selection)
    player.round_select(selection)
  end

  def round_num
    @round_history.length
  end

  def fight_message

  end

end