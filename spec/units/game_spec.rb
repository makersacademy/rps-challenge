require 'game'
describe Game do
  let(:player) { double(:player) }
  let(:computer) { double(:computer) }
  subject(:game) { described_class.new(player, computer) }

  it 'returns the Player object' do
    expect(game.player).to eq player
  end

  it 'returns the Computer object' do
    expect(game.computer).to eq computer
  end

  it "Returns :draw when both players did the same move" do
    allow(player).to receive(:choice).and_return("Rock")
    allow(computer).to receive(:choice).and_return("Rock")
    allow(player).to receive(:choice).and_return("Paper")
    allow(computer).to receive(:choice).and_return("Paper")
    allow(player).to receive(:choice).and_return("Scissors")
    allow(computer).to receive(:choice).and_return("Scissors")
    expect(game.result).to eq("It's a draw!")
  end

  it "Player wins" do
    allow(player).to receive(:choice).and_return("Rock")
    allow(computer).to receive(:choice).and_return("Scissors")
    allow(player).to receive(:choice).and_return("Paper")
    allow(computer).to receive(:choice).and_return("Rock")
    allow(player).to receive(:choice).and_return("Scissors")
    allow(computer).to receive(:choice).and_return("Paper")
    expect(game.result).to eq("You won!")
  end

  it "Computer wins" do
    allow(computer).to receive(:choice).and_return("Rock")
    allow(player).to receive(:choice).and_return("Scissors")
    allow(computer).to receive(:choice).and_return("Paper")
    allow(player).to receive(:choice).and_return("Rock")
    allow(computer).to receive(:choice).and_return("Scissors")
    allow(player).to receive(:choice).and_return("Paper")
    expect(game.result).to eq("The computer won :(")
  end
end
