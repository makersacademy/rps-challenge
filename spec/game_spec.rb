require 'game'

describe Game do
  subject(:game) { described_class.new('Player', 'Opponent') }

  it 'should have two entrants when initialized' do
    expect(game.players.length).to eq 2
  end

end
