class Aiplayer

  attr_reader :take_turn

  def initialize
    @take_turn = ['rock', 'paper', 'scissors'].sample
  end
end
