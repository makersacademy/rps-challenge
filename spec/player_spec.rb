require 'player'

describe Player do
  subject(:bob) { described_class.new 'Bob' }
  let(:weapon) { 'Rock' }

  it 'allows player to choose weapon' do
    expect(bob.weapon(weapon)).to eq weapon
  end
end
