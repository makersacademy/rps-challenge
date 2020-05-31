require './lib/players'

describe Players do

  let(:name) { double :name }
  let(:player_move) { double :player_move }
  subject { described_class.new(name) }

  it 'player has a name a name' do
    expect(subject.name).to eq name
  end

  it 'player can choose a move' do
    expect(subject.player_choose_move(player_move)).to eq player_move
  end
end
