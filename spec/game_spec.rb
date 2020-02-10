require 'game'

describe Game do 

  subject(:game) { described_class.new(player_1, player_2) }
  let(:player_1) { double :player_1 }
  let(:player_2) { double :player_2 }

  describe "#player_1" do
    it 'retrieves the first player' do
      expect(game.player_1).to eq player_1
    end
  end

  describe "#player_2" do
    it 'retrieves the second player' do
      expect(game.player_2).to eq player_2
    end
  end

  describe "#winner" do
    it 'tells you who the winner is' do
      allow(player_1).to receive(:action).and_return("Paper")
      allow(player_2).to receive(:action).and_return("Scissors")
      allow(player_1).to receive(:name).and_return("player_1_test")
      allow(player_2).to receive(:name).and_return("player_2_test")
      expect(game.winner(player_1, player_2)).to eq "#{player_2.name} Wins!"
    end

    it 'tells you who the winner is' do
      allow(player_1).to receive(:action).and_return("Paper")
      allow(player_2).to receive(:action).and_return("Rock")
      allow(player_1).to receive(:name).and_return("player_1_test")
      allow(player_2).to receive(:name).and_return("player_2_test")
      expect(game.winner(player_1, player_2)).to eq "#{player_1.name} Wins!"
    end

    it 'tells you when it is a draw' do 
      allow(player_1).to receive(:action).and_return("Paper")
      allow(player_2).to receive(:action).and_return("Paper")
      expect(game.winner(player_1, player_2)).to eq "It's a DRAW!"
    end
  end
end
