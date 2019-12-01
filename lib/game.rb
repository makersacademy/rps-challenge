class Game

  RULES = [
    { player: :Rock, computer: :Scissors, winner: :Player },
    { player: :Rock, computer: :Paper, winner: :Computer },
    { player: :Paper, computer: :Rock, winner: :Player },
    { player: :Paper, computer: :Scissors, winner: :Computer },
    { player: :Scissors, computer: :Paper, winner: :Player },
    { player: :Scissors, computer: :Rock, winner: :Computer },
  ]

  attr_reader :players_turn, :computers_turn

  def initialize(players_turn, computer_class = Computer)
    @players_turn = players_turn
    @computer = computer_class.new
    @computers_turn = @computer.turn
    @play = { player: @players_turn.to_sym, computer: @computers_turn.to_sym }
  end

  def winner
    if @players_turn == @computers_turn
      "Draw"
    else
      RULES.each { |game|
        if game[:player] == @play[:player] && game[:computer] == @play[:computer]
          return game[:winner].to_s
        end
      }
    end
  end

end
