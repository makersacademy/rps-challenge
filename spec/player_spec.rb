require 'player'

describe Player do

  subject(:player) { described_class.new('Tim') }

  it 'can call their name' do
    expect(player.name).to eq 'Tim'
  end

  
end