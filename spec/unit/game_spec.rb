require 'game'

describe Game do
  let(:player_turn) { double(:player_turn) }
  subject(:game) { described_class.new(player_turn) }

  it 'accepts player turn as a string' do
    expect(game.player_turn).to eq(player_turn)
  end

  it 'picks a random RPS string' do
    allow(game).to receive(:cpu_turn).and_return('rock')
    expect(game.cpu_turn).to eq('rock')
  end
end
