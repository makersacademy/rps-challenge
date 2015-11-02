require 'game'

describe Game do
  subject(:game) { described_class.new(player1, player2,) }
  let(:player1) { double :player1 }
  let(:player2) { double :player2 }
  let(:choice) { double :choice }

  context '#player1_won?' do
    it 'has won' do
    allow(player2).to receive(:choice).and_return(:rock)
    expect(player2.choice).to eq :rock
    end
  end

  context '#draw?' do
    it "player has draw against Computer" do
    allow(player1).to receive(:choice).and_return(:paper)
    expect(player1.choice).to eq :paper
    end
  end

  context '#winner' do
    it 'tell you that you won' do
      allow(player1).to receive(:choice).and_return(:scissors)
      expect(player1.choice).to eq :scissors
    end
  end

end
