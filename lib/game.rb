class Game

 attr_reader :words, :player, :computer_c, :player_c, :result

  def initialize(player, player_c= '', computer_c= '')
  @words = [:rock, :paper, :scissors]
  @player = player
  @computer_c = computer_c
  @player_c = player_c
  @result =''
  end

  def computer_choice
    @computer_c = rand(3)
  end

  def choice_into_word
    @words[@computer_c]
  end

  def player_choice
    @player_c = @words.each_index.detect{|i| @words[i] == @player.choice}
  end

  def winner
    if @player_c  == @computer_c
      @result = 'DRAW'
    elsif @player_c == @words.length-1 && @computer_c== 0
        @result = 'COMPUTER WON'
    elsif @computer_c == @player_c + 1
      @result = 'COMPUTER WON'
    else
      @result = 'PLAYER WON'
    end
  end
end
