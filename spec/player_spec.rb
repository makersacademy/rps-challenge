require 'player'

describe Player do

  let(:player) { Player.new('Kelvin') }

  it 'can return a saved name' do
    expect(player.name).to eq('Kelvin')
  end


end