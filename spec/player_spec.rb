require 'player'

describe Player do
  let(:player) { described_class.new 'Jon'}

  it 'returns it/s name' do
  expect(player.name).to eq 'Jon'
  end

  it 'sets a weapon' do
    player.select_weapon('rock')
    expect(player.weapon).to eq 'rock'
  end

end
