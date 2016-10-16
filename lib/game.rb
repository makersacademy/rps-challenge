require_relative 'computer'

class Game

  attr_reader :player_1, :player_2, :player_2_choice, :winner

  def initialize(player_1, player_2=Computer.new)
    @player_1 = player_1
    @player_2 = player_2
  end

  def self.create(player)
    @game = Game.new(player)
  end

  def self.instance
    @game
  end

  def decide_winner
    if game_draw
      @winner = nil
    elsif player_1_beats_player_2?
      player_1_wins
    else
      player_2_wins
    end
  end

  private

  def player_1_wins
    @winner = @player_1
  end

  def player_2_wins
    @winner = @player_2
  end

  def game_draw
    @player_1.weapon == @player_2.weapon
  end

  def player_1_beats_player_2?
    winning_moves[@player_1.weapon] == @player_2.weapon
  end

  def winning_moves
    {
    'rock' => 'scissors',
    'scissors' => 'paper',
    'paper' => 'rock'
    }
  end

end
