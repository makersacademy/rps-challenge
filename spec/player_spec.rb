require './lib/player'

describe Player do

  let(:player) { Player.new }

  it 'has a name' do
    player.name = 'Nicola'
    expect(player.name).to eq 'Nicola'
  end

  it 'can choose rock paper or scissors' do
    player.choice  = 'rock'
    expect(player.choice).to eq 'rock'
  end

end
