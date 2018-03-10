require 'player'

describe Player do
  subject(:subject) { described_class.new('katie')}
  it 'initialises with player name' do
    expect(subject.name).to eq 'katie'
  end
end
