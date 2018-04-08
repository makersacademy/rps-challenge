require_relative './player.rb'
require_relative './computer.rb'

class Game

attr_accessor :player, :computer, :result

  def initialize(player_name, player = Player, computer = Computer)
    @player = player.new(player_name)
    @computer = computer.new
    @winners = [["SCISSORS", "PAPER"], ["PAPER", "ROCK"], ["ROCK", "SCISSORS"]]
    @losers = @winners.map{ |k, v| [v, k] }
  end

  def player_turn(choice)
    @player.choose(choice)
  end

  def computer_turn
    @computer.choose
  end

  def winner(player, computer)
    result = [player.upcase, computer.upcase]
    p result
    if @winners.include?(result)
      "#{@player.name} WIN!"
    elsif @losers.include?(result)
      "#{@computer.name} WIN!"
    else
      "TIE!"
    end
  end

end
