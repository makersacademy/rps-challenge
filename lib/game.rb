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
    @computer_choice
  end

  def computer_choice
    @computer_choice = rock_paper_scissors?
  end

  def check_result( player_choice )
    return "EVEN!!" if player_choice == @computer_choice

    case player_choice
      when "rock"
        return "YOU WIN!!" if @computer_choice == "scissors"
      when "paper"
        return "YOU WIN!!" if @computer_choice == "rock"
      when "scissors"
        return "YOU WIN!!" if @computer_choice == "paper"
    end
    "YOU LOSE..."
  end

  def rock_paper_scissors?
    choice = random_number
    return "rock"     if choice == 1
    return "paper"    if choice == 2
    return "scissors" if choice == 3
  end

  def random_number
    rand(1...3)
  end

end
