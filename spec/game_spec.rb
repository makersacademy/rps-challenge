require 'game'

describe Game do
  subject(:game) { described_class.new(player_1, player_2) }
  let(:player_1) { double :player }
  let(:player_2) { double :player }

  it 'creates a Game class instance' do
    expect(game).to be_instance_of(Game)
  end
end
