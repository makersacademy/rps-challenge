require 'player'

describe Player do

  let(:player) { Player.new('Max') }

  it 'displays name' do
    expect(player.name).to eq 'Max'
  end
end