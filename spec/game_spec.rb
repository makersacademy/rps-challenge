require 'game'

describe Game do
  subject(:game) {described_class.new(new_player)}
  let(:new_player) {double(:player)}

  it 'initializes with new player' do
    expect(game.player).to eq(new_player)
  end


end
