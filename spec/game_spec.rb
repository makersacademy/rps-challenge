require 'game'
require 'player'

describe Game do
  let(:player_1){double :player_1_dbl }
  let(:player_2){double :player_2_dbl }
  subject(:game){described_class.new(player_1, player_2)}

  it 'retrieves name of player_1' do
    expect(game.player_1).to eq player_1
  end

  it 'retrieves name of player_2' do
    expect(game.player_2).to eq player_2
  end

  

end
