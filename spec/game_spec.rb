require 'game'

describe Game do
  let(:player) { double(:player) }
  let(:computer) { double(:computer) }
  let(:game) { described_class.new(player, computer) }
  it 'starts with a player' do 
    expect(game.player).to eq player
  end
  it 'can receive a computers choice' do
    allow(computer).to receive(:choice).and_return "rock"
    expect(game.computer.choice).to eq "rock"
  end
end