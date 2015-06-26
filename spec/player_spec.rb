require './lib/player'

describe Player do

  let(:player) { Player.new 'Nicola' }

  it 'has a name' do
    expect(player.name).to eq 'Nicola'
  end

end
