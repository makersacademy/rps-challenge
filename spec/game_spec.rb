describe Game do
  let(:player_1) { double(:player_1) }
  let(:player_2) { double(:player_2) }
  subject(:game) { described_class.new(player_1, player_2)}
  it "returns the winner" do
    expect(game.win?('Rock','Scissors')).to eq player_1
  end
  it 'returns the draw' do
    expect(game.win?('Rock','Rock')).to eq "No winners :)"
  end
end
