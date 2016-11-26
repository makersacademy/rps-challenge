class Game

  attr_reader :player

  @game

  def self.init( player )
    @game = Game.new( player )
  end

  def self.now
    @game
  end

  def initialize( player )
    @player = player
    @player_choice
  end

  def computer_choice
    choice = random_number
    return "rock"     if choice == 1
    return "paper"    if choice == 2
    return "scissors" if choice == 3
  end

  def check_result( player_choice, computer_choice )
    return "EVEN!!" if player_choice == computer_choice

    case player_choice
      when "rock"
        return "WIN!!" if computer_choice == "scissors"
      when "paper"
        return "WIN!!" if computer_choice == "rock"
      when "scissors"
        return "WIN!!" if computer_choice == "paper"
    end
    "LOSE..."
  end

  def random_number
    rand(1...3)
  end

end
