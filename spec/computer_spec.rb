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

  describe '#random_choice' do
    it 'returns a random selection' do
    expect([:rock, :paper, :scissors, :lizard, :spock]).to include(computer.random_choice)
    end
  end
end