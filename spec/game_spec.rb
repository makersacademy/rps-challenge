require 'game'
describe Game do

  let(:player_1){ double :player_1 }
  let(:player_2) { double :player_2 }
  subject { described_class.new(player_1)}
  

  it 'can accept player as argument' do
    expect(described_class).to respond_to(:new).with(1).arguments
  end

  it 'returns player 1' do
    expect(subject.player_1).to eq player_1
  end

end