require 'game'
describe Game do
  let(:player) { double(:player) }
  let(:computer) { double(:computer) }
  subject(:game) { described_class.new(player, computer)}

  it 'returns the Player object' do
    expect(game.player).to eq player
  end

  it 'returns the Computer object' do
    expect(game.computer).to eq computer
  end

  it "Returns :draw when both players did the same move" do
    allow(player).to receive(:move).and_return("Rock")
    allow(computer).to receive(:move).and_return("Rock")
    allow(player).to receive(:move).and_return("Paper")
    allow(computer).to receive(:move).and_return("Paper")
    allow(player).to receive(:move).and_return("Scissors")
    allow(computer).to receive(:move).and_return("Scissors")
    expect(game.result).to eq(:draw)
  end


end
