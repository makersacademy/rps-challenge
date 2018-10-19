class Game

  attr_reader :player_1, :player_2

  def initialize(player_1, player_2 = Computer.new)
    @player_1 = player_1
    @player_2 = player_2
  end

  def winner
    case @player_1.choice
    when 'rock'
      case @player_2.choice
      when 'rock'
        'draw'
      when 'paper'
        @player_2
      when 'scissors'
        @player_1
      end
    when 'paper'
      case @player_2.choice
      when 'rock'
        @player_1
      when 'paper'
        'draw'
      when 'scissors'
        @player_2
      end
    when 'scissors'
      case @player_2.choice
      when 'rock'
        @player_2
      when 'paper'
        @player_1
      when 'scissors'
        'draw'
      end
    end
  end
end
