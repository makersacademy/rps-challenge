require 'player'

describe Player do
  subject(:bob) { described_class.new 'Bob' }
  let(:weapon) { 'Rock' }

  it 'allows player to choose weapon' do
    # allow(bob).to receive(:choice).with(weapon).and_return(weapon)
    bob.choice(weapon)
    expect(bob.weapon).to eq weapon
  end
end
