require 'player.rb'

describe Player do
  subject(:player) { described_class.new('Andrew') }

  it 'should give the player name Andrew' do
    expect(player.name).to eq 'Andrew'
  end
end
