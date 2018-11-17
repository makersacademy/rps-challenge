require 'game'

describe Game do
  subject(:game) { described_class.new(cesare)}
  let(:cesare) { double :player }
  let(:pc_moves) { double Game::PC_MOVES }

  describe '#draw' do
    it "Checks for a draw" do

    end
  end

  describe '#au_pair' do
    it "Shows a 'It's a draw!' message" do
      allow(cesare).to receive(:move) { :rock }
      allow(pc_moves).to receive(:sample) { :rock }
      game.draw
      expect(game.au_pair).to eq "It's a draw!"
    end
  end

  describe '#player_wins' do
    it "Shows a 'Player Wins!' message" do
      allow(cesare).to receive(:move) { :rock }
      allow(pc_moves).to receive(:sample) { :scissors }
      game.draw
      expect(game.player_wins).to eq "Player wins!"
    end
  end

  describe '#pc_wins' do
    it "Shows a 'PC Wins!' message" do
      allow(cesare).to receive(:move) { :rock }
      allow(pc_moves).to receive(:sample) { :paper }
      game.draw
      expect(game.pc_wins).to eq "PC wins!"
    end
  end


end
