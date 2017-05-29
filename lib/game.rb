require "csv"
class Game

  attr_reader :player, :result

  def initialize(player, player_c = '', computer_c = '')
    @words = [:rock, :paper, :scissors, :spock, :lizard]
    @outcome = ['DRAW', 'PLAYER WON', 'COMPUTER WON', 'PLAYER WON', 'COMPUTER WON']
    @player = player
    @computer_c = computer_c
    @player_c = player_c
    @result
  end

  def self.create(player_1)
    @game = Game.new(player_1)
  end

  def self.instance
    @game
  end

  def computer_choice
    @computer_c = rand(5)
  end

  def choice_into_word
    @words[@computer_c]
  end

  def player_choice
    @player_c = @words.each_index.detect { |i| @words[i] == @player.choice }
  end

  def winner
    @rules = Rules.new
    @result = @rules.winner(@player_c, @computer_c)
  end

  def print_results
    CSV.open("database.csv", "a+") do |csv|
      csv << [@player.name , @words[@computer_c], @words[@player_c], @result]
    end
  end
end
