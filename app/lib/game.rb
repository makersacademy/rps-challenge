class Game

  attr_reader :player1, :player2

  def initialize(player1= :no_player, player2= :no_player)
    @player1 = player1
    @player2 = player2
  end

  def add_player(player)
    if @player1 == :no_player
      @player1 = player
    else
      if @player2 == :no_player
        @player2 = player
      else
        raise 'Already 2 people playing!'
      end
    end
  end





end