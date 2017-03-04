require 'player'

describe Player do
  subject(:player) {described_class.new('rock')}

  it 'is initialized with a weapon' do
    expect(player.weapon).to eq 'rock'
  end
end
