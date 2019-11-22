require 'player'

describe Player do
  subject(:player) {Player.new('Anh')}

describe '#names' do
  it 'returns player name'
    expect(player.name).to eq 'Anh'
  end

end
