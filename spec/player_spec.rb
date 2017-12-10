require 'player'

describe Player do
  subject(:player) { described_class.new('Player') }

  it 'can add to player score when a win is recorded' do
    expect { player.record_win }.to change { player.score }.by 1
  end

  it 'can set choice' do
    expect { player.record_choice('Rock') }.to change { player.choice }.to 'Rock'
  end

end
