require 'game'
require 'player'

describe Game do

  subject(:game){described_class.new(player_1, player_2)}
  subject(:player_1){double :player}
  subject(:player_2){double :player}

  it 'is initialized with two players' do
    expect(game.players.size).to eq 2
  end

end
