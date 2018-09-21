require 'player.rb'

describe Player do
  let(:name) { double(:name) }
  it 'is initialized with a name as a parameter' do
    expect(subject.name).to eql("Skynet")
  end
  it{is_expected.to respond_to :choice}

  describe '#random_move' do
    it 'randomly returns a choice between rock, paper and scissors' do
      allow(described_class::WEAPONS).to receive(:sample).and_return(:rock)
      subject.random_move
      expect(subject.choice).to eql(:rock)
    end
  end

end