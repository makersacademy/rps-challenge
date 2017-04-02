require 'game'

describe Game do
  subject(:game) {described_class.new(new_player, new_computer)}
  let(:new_player) {double(:player)}
  let(:new_computer) {double(:computer)}

  it 'initializes with new player instance' do
    expect(game.player).to eq(new_player)
  end

  it 'initializes with new computer instance' do
    expect(game.computer).to eq(new_computer)
  end


end
