require_relative './choices'

class Resolver
  WIN = 1
  LOOSE = -1
  DRAW = 0

  def initialize(result_hash = {
    Choices::PAPER => {
      Choices::PAPER => DRAW,
      Choices::SCISSORS => LOOSE,
      Choices::ROCK => WIN
    },
    Choices::SCISSORS => {
      Choices::PAPER => WIN,
      Choices::SCISSORS => DRAW,
      Choices::ROCK => LOOSE
    },
    Choices::ROCK => {
      Choices::PAPER => LOOSE,
      Choices::SCISSORS => WIN,
      Choices::ROCK => DRAW
    }
  })
    @result_hash = result_hash
  end

  def resolve(choice_1, choice_2)
    result = @result_hash[choice_1][choice_2]
    return result
  end
end
