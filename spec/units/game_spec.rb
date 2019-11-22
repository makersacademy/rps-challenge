require './lib/game.rb'

describe Game do
  let(:player_1) { double :player_1 }
  let(:player_2) { double :player_2 }
  subject(:game) { described_class.new(player_1, player_2) }

  it 'should contain the players' do
    expect(game.players).to eq [player_1, player_2]
  end
end
