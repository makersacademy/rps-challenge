require './lib/player.rb'

describe Player do
  subject(:player) { described_class.new('Kelly')}

  it 'stores a players name' do
    expect(player.name).to eq 'Kelly'
  end

  it 'should initialize with no choice' do
    expect(player.choice).to be_nil
  end
end
