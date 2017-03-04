require 'game'

describe Game do
  let(:player_1) {double :player_1}
  let(:player_2) {double :player_2}
  subject(:game) {described_class.new(player_1, player_2)}

  it 'is initialized with two players' do
    expect(game.player_1).to eq player_1
  end

  it 'has an array of weapons' do
    expect(game.weapons).to eq ['rock', 'paper', 'scissors']
  end
end
