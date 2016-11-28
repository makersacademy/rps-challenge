class Game

  attr_reader :player, :computer_choice

  @game
  RULES = { "rock"=>"scissors", "paper"=>"rock", "scissors"=>"paper"}

  def self.init( player, computer )
    @game = Game.new( player, computer )
  end

  def self.now
    @game
  end

  def initialize( player, computer )
    @player = player
    @computer = computer
    @computer_choice
  end

  def check_result( player_choice )
    @computer_choice = @computer.pick
    return :result_even if player_choice == @computer_choice
    RULES[ player_choice ] == @computer_choice ? :result_win : :result_lose
  end
end
