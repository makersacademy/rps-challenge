
class RPS

attr_reader :player_1
attr_reader :player_2

OPTIONS = ["Rock", "Scissors", "Paper"]

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
  end 

  def winner
    @index_player_1 = OPTIONS.index(@player_1.choice)
    @index_player_2 = OPTIONS.index(@player_2.choice)
    # p @index_player_1
    # p @index_player_2
    if OPTIONS[@index_player_1 - 1] == OPTIONS[@index_player_2]
      @winner = @player_2.name
    elsif @index_player_1 == @index_player_2
      @winner = "It's a draw"
    else 
      @winner = @player_1.name
    end 

  end 



end 