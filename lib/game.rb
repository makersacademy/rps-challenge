class Game
  attr_reader :rps, :player, :ia_move, :player_move

  def initialize(player)
    @player = player
    @rps = ['rock', 'paper', 'scisors']
  end

  def player_selection
    @player_move = @rps.sample
  end

  def ia_selection
    @ia_move = @rps.sample
  end

  def who_wins?
    if player_move == 'rock' && ia_move == 'scisors'
      @player.win
      'You win!'
    elsif player_move == 'paper' && ia_move == 'rock'
      @player.win
      'You win!'
    elsif player_move == 'scisors' && ia_move == 'paper'
      @player.win
      'You win!'
    elsif player_move == ia_move
      @player.tie
      "It's a tie!"
    else
      @player.lose
      'You lose.'
    end
  end
end