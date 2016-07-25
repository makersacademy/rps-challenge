require 'player'

describe Player do

subject(:player) {described_class.new(name: "Tim")}

  context 'a player registers to play' do
  it 'will have a name attribute' do
    expect(player.name). to eq "Tim"
  end
end



end
