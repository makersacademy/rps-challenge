class Game

 attr_reader :words, :player, :computer_c, :player_c

  def initialize(player)
  @words = [:rock, :paper, :scissors]
  @player = player
  @computer_c
  @player_c
  end

  def computer_choice
    @computer_c = rand(3)
  end

  def player_choice
     @player_c = @words.each_index.detect{|i| @words[i] == @player.choice}
  end

  def winner
    if @player_c  == @computer_c
      'DRAW'
    elsif @player_c == @words.length-1 && @computer_c== 0
        'COMPUTER WON'
    elsif @computer_c == @player_c + 1
      'COMPUTER WON'
    else
      'PLAYER WON'
    end
  end
end
