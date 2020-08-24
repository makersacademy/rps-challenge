class Game
  attr_reader :player_1, :player_2
  require_relative 'mode'

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    if Mode.instance.game_mode == 'Single Player Mode'
      @player_2.add_move(['Rock', 'Paper', 'Scissors', 'Spock', 'Lizard'].sample)
    end
  end

  def self.init(player_1, player_2)
    @game = Game.new(player_1, player_2)
  end

  def self.instance
    @game
  end

  def winner
    if @player_1.move == @player_2.move
      return 'draw'
    elsif @player_1.move == 'Rock'
      if @player_2.move == 'Paper' || player_2.move == 'Spock'
        @player_2.name
      else
        @player_1.name
      end
    elsif @player_1.move == 'Paper'
      if @player_2.move == 'Scissors' || @player_2.move == 'Lizard'
        @player_2.name
      else
        @player_1.name
      end
    elsif @player_1.move == 'Scissors'
      if @player_2.move == 'Rock' || @player_2.move == 'Spock'
        @player_2.name
      else
        @player_1.name
      end
    elsif @player_1.move == 'Spock'
      if @player_2.move == 'Paper' || @player_2.move == 'Lizard'
        @player_2.name
      else
        @player_1.name
      end
    elsif @player_1.move == 'Lizard'
      if @player_2.move == 'Rock' || @player_2.move == 'Scissors'
        @player_2.name
      else
        @player_1.name
      end
    end
  end
end