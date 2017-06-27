class Game

attr_reader :players

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
  end

  def self.create_new_game(player_1, player_2)
    @game = Game.new(player_1, player_2)
  end

  def self.instance
    @game
  end

  def player_1
    @player_1 = @players.first
  end

  def player_2
    @player_2 = @players.last
  end

  def first_move
    @player_1.move.to_sym
  end

  def second_move
    @player_2.move
  end

  def calculate_result(player_1, player_2)
    if @player_1.move == @player_2.move
      :draw
    elsif @player_1.move == :rock && @player_2.move == :scissors
      :win
    elsif @player_1.move == :paper && @player_2.move == :rock
      :win
    elsif @player_1.move == :scissors && @player_2.move == :paper
      :win
    else
      :lose
    end
  end
end
