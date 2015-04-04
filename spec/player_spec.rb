require 'player'

describe Player do
  let(:player) { described_class.new 'Jack' }

  it 'has a name' do
    expect(player.name).to eq 'Jack'
  end

  it 'can make a hand' do
    expect(player.make_hand 'rock').to eq 'rock'
    expect(player.make_hand 'paper').to eq 'paper'
    expect(player.make_hand 'scissors').to eq 'scissors'
  end
end
