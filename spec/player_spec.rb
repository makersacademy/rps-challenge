require 'player'

describe Player do
  let(:player) { described_class.new 'Jon'}
  let(:weapons) {double :weapons}

  it 'returns it/s name' do
  expect(player.name).to eq 'Jon'
  end

  it 'sets a weapon' do
    player.select_weapon('rock')
    expect(player.weapon).to eq 'rock'
  end

  it 'randomly selects the computers weapon' do
    allow(weapons).to receive(:sample).and_return('rock')
    player.select_weapon(weapons.sample)
    expect(player.weapon).to eq 'rock'
  end

end
