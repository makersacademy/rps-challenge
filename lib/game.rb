class Game
  attr_reader :player_1, :player_2, :current_turn, :opponent

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @current_turn = player_1
    @opponent = player_2
  end

  def self.instance
    @game
  end

  def self.create(player_1, player_2)
    @game = Game.new(player_1, player_2)
  end

  def switch_turns
    if @current_turn == player_1
      @current_turn = player_2
    else
      @current_turn = player_1
    end
  end

  def winner
    if @player_1.choice == 'Rock'
      if @player_2.choice == 'Paper'
        return @player_2
      elsif @player_2.choice == 'Scissors'
        return @player_1
      end
    elsif @player_1.choice == 'Paper'
      if @player_2.choice == 'Rock'
        return @player_1
      elsif @player_2.choice == 'Scissors'
        return @player_2
      end
    elsif @player_1.choice == 'Scissors'
      if @player_2.choice == 'Rock'
        return @player_2
      elsif @player_2.choice == 'Paper'
        return @player_1
      end
    end
    p 'draw'
    return 'Draw'

  end

  def loser
    return @player_1 if winner == @player_2
    return @player_2
  end

end
