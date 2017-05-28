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
    @result = @outcome[@player_c - @computer_c]
  end

end
