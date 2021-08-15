require "./lib/player.rb"

class Game
  attr_accessor :player1, :player2

  def initialize(player1, player2 = "Computer")
    @player1 = Player.new(player1)
    @player2 = Player.new(player2)
    @winners = ['', '', 'sp', 'ps', 'pr', 'rp', 'rs', 'sr']
  end

  def results_setup
    win_or_lose(@player1.option, @player2.option)
  end

  def win_or_lose(choice1, choice2)
    return :error unless [:rock, :paper, :scissors].include?(choice1)
    return :error unless [:rock, :paper, :scissors].include?(choice2)
    option = choice1.to_s[0] << choice2.to_s[0]
    @winners.include?(option) ? ((@winners.index(option) % 2 == 0) ? :win : :lose) : :draw
  end

end
