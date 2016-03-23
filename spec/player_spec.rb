require 'player'

describe Player do
  subject(:bob) { described_class.new 'Bob' }
  let(:weapon) { 'rock' }

  it 'allows player to choose weapon' do
    bob.choice(weapon)
    expect(bob.weapon).to eq weapon
  end
end
