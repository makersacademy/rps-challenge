class Game

  attr_reader :player1, :player2

  def initialize(player1= :no_player, player2= :no_player)
    @player1 = player1
    @player2 = player2
  end

  def add_player(player)
    @player1 == :no_player ? (return @player1 = player) : @player1
    @player2 == :no_player ? (return @player2 = player) : @player2
    raise 'Already two people playing!'
  end





end