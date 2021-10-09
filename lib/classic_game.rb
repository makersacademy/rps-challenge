require_relative 'player'

class ClassicGame

  attr_reader :player

  def initialize(player = Player.new('PLAYER ONE'))
    @player = player
  end

  def move(input)
    fail "invalid move" unless valid_move(input)
  end

  def ai_move
    case random_number
    when 1
      "Rock"
    when 2
      "Paper"
    when 3
      "Scissors"
    end
  end

  private

  def valid_move(input)
    return true if input == "Rock" || input == "Paper" || input == "Scissors"
    false
  end

  def random_number
    rand(1..3).to_i
  end
end
