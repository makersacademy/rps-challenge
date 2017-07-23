require 'game'

describe Game do
  subject(:game) { described_class.new }
  let(:player_1) { double(:player, get_weapon: 'Rock') }
  let(:player_2) { double(:computer, get_weapon: 'Scissors') }

  it "compares the weapons" do
    expect(game.return_winner(player_1, player_2)).to eq 1
  end
end
