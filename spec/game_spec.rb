require 'game'

describe Game do
  subject(:game) { described_class.new(player1, player2,) }
  let(:player1) { double :player1 }
  let(:choice) { double :choice }

  context '#player1_won?' do
    it 'has won' do
      expect(page).to eq true
    end
  end

  context '#draw?' do
    it "player has draw against Computer" do
    allow(player1).to receive(:choice).and_return(:paper)
    expect(player1.choice).to eq player2.choice
    end
  end

  context '#winner' do
    it 'tell you that you won' do
      expect(player1.name).to eq 'jamie'
    end
  end

end
