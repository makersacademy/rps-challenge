require 'game'

describe Game do
  subject(:game) { described_class.new(player_1, player_2) }
  let(:player_1) { double(:player, weapon: 'Rock') }
  let(:player_2) { double(:computer, generate_weapon: 'Scissors', weapon: 'Scissors') }

  it "compares the weapons" do
    expect(game.return_winner).to eq "You win!"
  end
end
