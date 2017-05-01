require 'game'
describe Game do
  
  subject(:game) { described_class.new(player_1, player_2) }
  let(:player_1) { double :player_1 }
  let(:player_2) { double :player_2 }

  it 'gets an instance of player 1' do
    expect(game.player_1).to eq player_1
  end

  it 'gets an instance of player 2 or the computer' do
    expect(game.player_2).to eq player_2
  end

end
