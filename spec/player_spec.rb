require 'player'

describe Player do

  let(:player) { described_class.new("Player")}
  
  it 'initializes with a name' do
    expect(player).to respond_to :name
  end

  it 'can pick a weapon' do
    expect(player).to respond_to(:pick_weapon).with(1).argument
  end

end