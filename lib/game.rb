require_relative 'turn'

class Game

  attr_reader :player1, :player2

  WEAPONS = ['Paper', 'Rock', 'Scissors']

  def initialize(player1, player2 = Player.new('Computer'), turn = Turn)
    @player1 = player1
    @player2 = player2
    @turn_klass = turn
  end

  def selection(weapon1)
    weapon2 = rand_weapon if @player2.name == 'Computer'
    @player1.selection = weapon1
    @player2.selection = weapon2
  end

  def turn_result
    p1 = @player1.selection
    p2 = @player2.selection
    turn = @turn_klass.new(p1, p2)
    turn.result
  end

  def over?
  end

  private

  def rand_weapon
    #WEAPONS.sample
    'Rock'
  end

end
