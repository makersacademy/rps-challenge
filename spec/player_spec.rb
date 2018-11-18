require 'player'

describe Player do
  let(:luisa) { Player.new('Luisa', 'Rock') }

  it 'Should return player name' do
    expect(luisa.name).to eq 'Luisa'
  end

  it 'returns the weapon' do
    expect(luisa.weapon).to eq 'Rock'
  end

end
