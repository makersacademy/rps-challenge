describe Game do
  subject(:game) { described_class.new(player_1) }
  let(:player_1) { double :player_1 }

  it 'gets an instance of player 1' do
    expect(game.player_1).to eq player_1
  end

end
