class Game

  attr_accessor :player, :choices

  def initialize(player)
    @player = player
    @choices = ['Rock', 'Paper', 'Scissors']
  end

  def computer_choice
    choices.sample
  end

  # def rules(_player_1, _player_2)
  #   winners = [[:scissors, :paper], [:paper, :rock], [:rock, :scissors]]
  #   losers = winners.map { |x, y| [y, x] }
  # end
end
