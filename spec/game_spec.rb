require 'game'

describe Game do
  let(:game) {described_class.new(player_1,player_2)}
  let(:player_1) {double :player}
  let(:player_2) {double :player}

  it 'retrieves the first player' do
    expect(game.player_1).to eq player_1
  end

  it 'retrieves the second player' do
    expect(game.player_2).to eq player_2
  end
end
