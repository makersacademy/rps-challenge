require 'player'

RSpec.describe Player do
  let(:sam) { Player.new(:sam) }

  it 'has a default name of Guest' do
    expect(subject.name).to eq 'Guest'
  end

  it 'can have a custom name' do
    expect(sam.name).to eq :sam
  end
end
