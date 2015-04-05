class Game
  attr_reader :hand_value, :players, :number_of_p
  def initialize
    @players = []
    @number_of_p = 0
  end

  def chose_hand
    @hand_value = %w(Rock Paper Scissors)[rand(3)]
  end

  def add_player(player)
    if @number_of_p < 2
      @number_of_p += 1
      @players << player
    else
      fail 'Sorry! 2 players only!'
    end
  end

  def winner
    matching_hands_with_players
    comparing_hands
  end

  def matching_hands_with_players
    @player1 = @players[0]
    if @players.length == 1
      @player2 = 'The game'
      @phv2 = chose_hand.downcase
    else
      @player2 = @players[1]
      @phv2 = @player2.hand_value.downcase
    end
    @phv1 = @player1.hand_value.downcase
  end

  def comparing_hands
    # I know it's ugly. Will need major refactoring! But it works so far!
    if @phv1 == @phv2
      fail 'Tie!'
    elsif @phv1 == 'rock' && @phv2 == 'scissors'
      @player1
    elsif @phv1 == 'rock' && @phv2 == 'paper'
      @player2
    elsif @phv1 == 'paper' && @phv2 == 'rock'
      @player1
    elsif @phv1 == 'paper' && @phv2 == 'scissors'
      @player2
    elsif @phv1 == 'scissors' && @phv2 == 'rock'
      @player2
    elsif @phv1 == 'scissors' && @phv2 == 'paper'
      @player1
    end
  end
end
