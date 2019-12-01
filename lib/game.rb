class Game

  RULES = { rock: :scissors, paper: :rock, scissors: :paper }

  # [
  #   { player: :Rock, computer: :Scissors, winner: :Player },
  #   { player: :Rock, computer: :Paper, winner: :Computer },
  #   { player: :Paper, computer: :Rock, winner: :Player },
  #   { player: :Paper, computer: :Scissors, winner: :Computer },
  #   { player: :Scissors, computer: :Paper, winner: :Player },
  #   { player: :Scissors, computer: :Rock, winner: :Computer },
  # ]

  attr_reader :computers_turn

  def initialize(player_name, player_turn, player_class = Player, computer_class = Computer)
    @player = player_class.new(player_name, player_turn)
    @computer = computer_class.new
    @computers_turn = @computer.turn
    @players_turn = @player.turn.to_sym
  end

  def winner
    if @players_turn == @computers_turn
      :draw
    elsif RULES[@players_turn] == @computers_turn
      :win
    else :lose
    end
  end

end
