require_relative './player'
require_relative './npc'

class Game
  attr_reader :user_move, :result, :npc_move
  attr_writer :user_move

  def initialize(player_class=Player, npc_class=NPC, test=false, p1_name)
    @player_class = player_class
    @npc_class = npc_class
    @p1 = @player_class.new(p1_name)
    @user_move = nil
    @user_move_converted = nil
    @npc_move = nil
    @result = nil

    if test == false
      @n1 = @npc_class.new
    else
      @n1 = @npc_class.new(1234)
    end
  end

  def p1_name
    @p1.name
  end

  def get_result
    @result = compare_move(@user_move)
  end

  def compare_move(user_move)

    @npc_move = @n1.move

    if @npc_move == 0 && user_move == 2
      return 'lose'
    end

    if @npc_move == 2 && user_move == 0
      return 'win'
    end

    if @npc_move < user_move
      return 'win'
    elsif @npc_move > user_move
      return 'lose'
    else
      return 'draw'
    end
  end

  def converter(move)
    case move
    when 0
      'Scissors'
    when 1
      'Rock'
    when 2
      'Paper'
    else
      raise "Unexpected move"
    end
  end







end
