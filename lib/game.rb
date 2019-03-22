class Game
  attr_reader :player_1, :player_2, :winner
  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @winner = nil
  end

  def play
    player_2.update_choice if @player_2.choice == nil || @player_2.choice == ""

    results = [{result: @player_1, player_1: "Scissors", player_2: "Paper"},
              {result: @player_2, player_1: "Scissors", player_2: "Rock"},
              {result: "draw", player_1: "Scissors", player_2: "Scissors"},
              {result: @player_1, player_1: "Paper", player_2: "Rock"},
              {result: @player_2, player_1: "Paper", player_2: "Scissors"},
              {result: "draw", player_1: "Paper", player_2: "Paper"},
              {result: @player_1, player_1: "Rock", player_2: "Scissors"},
              {result: @player_2, player_1: "Rock", player_2: "Paper"},
              {result: "draw", player_1: "Rock", player_2: "Rock"}]

    results.each do |outcome|
      if outcome[:player_1] == @player_1.choice && outcome[:player_2] == player_2.choice
        @winner = outcome[:result]
      end
    end
    self
  end
end
