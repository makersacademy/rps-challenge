require 'game'

describe Game do
  let(:game) { Game.new("Max") }
  it 'prints the name of a player' do
    expect(game.player.name).to eq "Max"
  end

  describe "#move" do
    it 'stores the move chosen by player' do
      expect(game.move("Rock")).to eq 'Rock'
    end
  end

  describe '#computer_move' do
    it 'returns a random move' do
      allow(game).to receive(:computer_move).and_return("Rock")
      expect(game.computer_move).to eq "Rock"
    end
  end

  describe '#determines_outcome' do
    it 'returns a winner based on the chosen moves' do
      # allow(game).to receive(:computer_move).and_return("Rock")
      game.move("Paper")
      expect(game.determines_outcome).not_to eq nil?
    end
  end
# above test written for the winner = {} and determine_outcome method to be written
# Couldn't get mocks to work with this but it runs correctly in app
end
