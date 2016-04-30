require 'player'

describe Player do
  subject(:player) { described_class.new('Emma') }

  it 'initializes with a name' do
    expect(player.name).to eq 'Emma'
  end

  it 'can choose Rock, Paper or Scissors' do
    player.choose('Rock')
    expect(player.choice).to eq 'Rock'
  end

  it 'chooses a random attack if not passed a specific one' do
    player.choose
    expect(Player::ATTACKS).to include(player.choice)
  end

end
