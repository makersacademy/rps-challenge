require 'player'

describe Player do
  subject(:player) { described_class.new('Jax') }

  it 'remembers its name' do
    expect(player.name).to eq 'Jax'
  end
end