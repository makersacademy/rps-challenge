require 'player'

describe Player do
  subject(:mittens) { Player.new('mittens') }
  it 'initializes with a name' do
    expect(mittens.name).to eq 'mittens'
  end
end
