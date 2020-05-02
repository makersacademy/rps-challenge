require_relative './computer'

class Game 
  attr_reader :player_pick, :computer_pick, :pc
  attr_accessor :results, :player_wins, :computer_wins, :tie_game, :round

  def initialize(player, computer = Computer.new)
    @player_pick = player
    @computer_pick = computer
    @results = []
    @player_wins = []
    @computer_wins = []
    @tie_game = []
    @round = 0
  end

  def choose_winner
    @pc = @computer_pick.random_pick
    @results << "#{@player_pick} v #{@pc}"
    @round += 1

    if @player_pick == pc
      @tie_game << 1
      "Even Steven" 
    elsif player_winner?
      @player_wins << 1
      "I knew I can do it"
    else
      @computer_wins << 1
      "You're better than this"
    end
  end

  private

  def player_winner?
    (@player_pick == "Rock" && @pc == "Scissors") || (@player_pick == "Papper" && @pc == "Rock") || (@player_pick == "Scissors" && @pc == "Papper")
  end
  
end
