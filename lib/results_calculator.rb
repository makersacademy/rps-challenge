class ResultsCalculator
  attr_reader :player_1_move, :player_2_move

  def initialize(player_1, player_2)
    @player_2 = player_2
    @player_1_move = player_1.move
    @player_2_move = player_2.move
    @beats = { "Rock" => "Paper", "Paper" => "Scissors", "Scissors" => "Rock" }
  end

  def result
    return :tie if tie
    return :computer_wins if player_2_wins && @player_2.name == "Computer"
    return :player_2_wins if player_2_wins
    
    return :player_1_wins 
  end

  def self.create(player_1, player_2)
    @results_calc = ResultsCalculator.new(player_1, player_2)
  end

  def self.instance
    @results_calc
  end

  private 

  def tie
    @player_1_move == @player_2_move
  end

  def player_2_wins
    @player_2_move == @beats[@player_1_move]
  end
end
