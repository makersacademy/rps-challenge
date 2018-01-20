require_relative '../lib/player.rb'

describe Player do

  subject(:player) { described_class.new("Ellie") }

  it 'initializes with a name' do
    expect(subject.name).to eq('Ellie')
  end


end
