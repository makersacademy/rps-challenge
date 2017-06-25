# spec/npc_spec.rb
require 'npc'

describe NPC do
  subject(:npc) { described_class.new }

  it 'gives the npc a ROCK to play' do
    allow(npc).to receive(:weapon).and_return('ROCK')
    expect(npc.weapon).to eq('ROCK')
  end
end
