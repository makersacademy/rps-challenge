class Game

  def initialize
    @game
  end

RULES = { Rock: :Scissors,
          Paper: :Rock,
          Scissors: :Paper }

          def wins?
            RULES[:Rock] == :Scissors
          end

          def draw?
            :Scissors == :Rock
          end
end
