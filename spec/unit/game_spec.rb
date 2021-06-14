require 'game'

describe Game do
  let(:player_turn) { double(:player_turn) }
  let(:cpu_turn) { double(:cpu_turn) }
  subject(:game) { described_class.new(player_turn, cpu_turn) }

  it 'accepts player turn and cpu turn as a string' do
    expect(game.player_turn).to eq(player_turn)
    expect(game.cpu_turn).to eq(cpu_turn)
  end
end
