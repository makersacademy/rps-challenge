require 'player'

describe Player do

  let(:player) { described_class.new("Player")}
  
  it 'initializes with a name' do
    expect(player).to respond_to :name
  end

end