class Game

  RULES = [
    { player: :Rock, computer: :Scissors, winner: :Player },
    { player: :Rock, computer: :Paper, winner: :Computer },
    { player: :Paper, computer: :Rock, winner: :Player },
    { player: :Paper, computer: :Scissors, winner: :Computer },
    { player: :Scissors, computer: :Paper, winner: :Player },
    { player: :Scissors, computer: :Rock, winner: :Computer },
  ]

  attr_reader :computers_turn

  def initialize(player_name, player_turn, player_class = Player, computer_class = Computer)
    @player = player_class.new(player_name, player_turn)
    @computer = computer_class.new
    @computers_turn = @computer.turn
    @play = { player: @player.turn.to_sym, computer: @computers_turn.to_sym }
  end

  def winner
    if @player.turn == @computers_turn
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
