require 'computer'

describe Computer do
  subject(:computer) { Computer.new }

  describe '#name' do
    it 'returns the name' do
      expect(computer.name).to eq 'Computer'
    end
  end

  describe '#score' do
    it 'returns player score' do
      expect(computer.points).to eq described_class::STARTING_POINTS
    end
  end

  describe '#score' do
    it 'returns a random selection' do
    allow_any_instance_of(computer).to receive(:sample).and_return(:rock)
    expect(computer.choice).to eq :rock
    end
  end
end