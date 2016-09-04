require 'game'

describe Game do

  let(:player_1) {double :player_1}
  let(:player_2) {double :player_2}
  subject(:game) {described_class.new(player_1,player_2)}

  before do
    allow(player_1).to receive(:name)
    allow(player_2).to receive(:name)
  end

  it 'returns a players name' do
    expect(game.player_1.name).to eq player_1.name
  end

  it 'allows rock to beat scissors' do
    allow(player_1).to receive(:choice).and_return(:rock)
    allow(player_2).to receive(:choice).and_return(:scissors)
    expect(game.fight).to eq :player_1_won
  end

  it 'allows scissors to beat paper' do
    allow(player_1).to receive(:choice).and_return(:paper)
    allow(player_2).to receive(:choice).and_return(:scissors)
    expect(game.fight).to eq :player_2_won
  end

  it 'allows a draw if both choices are equal' do
    allow(player_1).to receive(:choice).and_return(:rock)
    allow(player_2).to receive(:choice).and_return(:rock)
    expect(game.fight).to eq :draw
  end

  it 'allows paper to beat rock' do
    allow(player_1).to receive(:choice).and_return(:paper)
    allow(player_2).to receive(:choice).and_return(:rock)
    expect(game.fight).to eq :player_1_won
  end

end
