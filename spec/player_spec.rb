require './models/player.rb'

describe Player do
  subject(:mittens) { Player.new('James') }
  it 'initializes with a name' do
    expect(mittens.name).to eq 'James'
  end
end