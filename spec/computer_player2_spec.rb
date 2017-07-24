require_relative '../lib/player.rb'

describe Player do
  subject(:player) { described_class.new("Computer") }

  it 'computer chooses a random move to play' do
    expect(["Rock", "Paper", "Scissors", "Spock", "Lizard"]).to include(player.computer_move)
  end

end
