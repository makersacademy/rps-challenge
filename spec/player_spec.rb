require 'spec_helper'
require 'player'

describe Player do

  subject(:player) { described_class.new("Frank") }

  it 'is initialized with a name' do
    expect(player.name).to eq("Frank")
  end

  it 'player can make a choice' do
    player.choose("rock")
    expect(player.choice).to eq("rock")
  end

end
