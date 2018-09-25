class Game
  attr_reader :player1, :result, :player2

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @key_beats_value = { :Rock => [:Scissors, :Lizard], :Paper =>
      [:Rock, :Spock], :Scissors => [:Paper, :Lizard],
      :Spock => [:Scissors, :Rock], :Lizard => [:Spock, :Paper] }
  end

  def play
    p1 = @player1.player_choice.to_sym
    p2 = @player2.player_choice.to_sym
    if @key_beats_value[p1].include?(p2)
      'player1'
    elsif @key_beats_value[p2].include?(p1)
      'player2'
    else
      'draw'
    end
  end

  def computer_choice
    [:Rock, :Paper, :Scissors, :Spock, :Lizard].sample
  end
end
