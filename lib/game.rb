require_relative 'turn'

class Game

  attr_reader :player1, :player2

  WEAPONS = ['Paper', 'Rock', 'Scissors']
  WINNING_SCORE = 3

  def initialize(player1, player2 = Player.new('Computer'), turn = Turn)
    @player1 = player1
    @player2 = player2
    @turn_klass = turn
  end

  def play_turn(weapon1)
    weapon2 = rand_weapon if @player2.name == 'Computer'
    @player2.selection = weapon2
    @player1.selection = weapon1
    @turn = @turn_klass.new(@player1, @player2)
    @turn.play
  end

  def message
    @turn == nil ? 'Welcome!' : @turn.message
  end

  def win_message
    if wins?(@player1)
      "Congratulations! You won against #{@player2.name}"
    elsif wins?(@player2)
      "Oh no! You lost against #{@player2.name}"
    end
  end

  private

  def wins?(player)
    player.score == WINNING_SCORE
  end

  def rand_weapon
    #WEAPONS.sample
    'Rock'
  end

end
