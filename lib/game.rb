require_relative 'turn'

class Game

  attr_reader :player1, :player2

  WEAPONS = ['Paper', 'Rock', 'Scissors']

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
    return @turn.message if @turn != nil
    'Welcome!'
  end

  def over?
  end

  private

  def rand_weapon
    #WEAPONS.sample
    'Rock'
  end

end
