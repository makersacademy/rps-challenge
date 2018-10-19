class Rps
  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
  end

  def decide
    case
      when @player_1.selection == @player_2.selection
        :tie
      when @player_1.selection == "R" && @player_2.selection == "S"
        :win
      when @player_1.selection == "P" && @player_2.selection == "R"
        :win
      when @player_1.selection == "S" && @player_2.selection == "P"
        :win
      when @player_2.selection == "R" && @player_1.selection == "S"
        :lose
      when @player_2.selection == "P" && @player_1.selection == "R"
        :lose
      when @player_2.selection == "S" && @player_1.selection == "P"
        :lose
    end
  end
end
