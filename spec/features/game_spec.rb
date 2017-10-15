require 'game'

describe Game do
  let(:player) { double(:player) }
  let(:computer) { double(:computer) }
  let(:game) { described_class.new(player, computer) }
  it 'starts with a player' do 
    expect(game.player).to eq player
  end
  before do
    allow(computer).to receive(:choice).and_return "rock"
  end
  it 'can receive a computers choice' do
    expect(game.computer.choice).to eq "rock"
  end
  context '#result' do
    it 'returns a draw if both choices are the same' do
      expect(game.result("rock")).to eq "Drew"
    end
    it 'returns a win if player wins' do
      expect(game.result("paper")).to eq "Won"
    end
    it 'returns a loss if computer wins' do
      expect(game.result("scissors")).to eq "Lost"
    end
  end
end
