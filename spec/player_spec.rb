require 'player'

describe Player do
  let(:player) { described_class.new 'Jack' }

  it 'has a name' do
    expect(player.name).to eq 'Jack'
  end

  it 'knows what hand to play next' do
    player.next_hand = 'rock'
    expect(player.next_hand).to eq 'rock'
  end

  it 'knows if he/she is ready' do
    expect(player).not_to be_ready
    player.next_hand = 'rock'
    expect(player).to be_ready
  end

  it 'can make a hand' do
    player.next_hand = 'paper'
    expect(player.make_hand).to eq 'paper'
    expect(player.next_hand).to eq nil
  end
end
