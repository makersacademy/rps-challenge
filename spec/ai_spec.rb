require 'ai'

describe AI do
  describe '#move' do
    before :each do
      srand(4)
    end
    
    it 'picks a move randomly' do
      expect(subject.move).to eq(:scissors)
    end

    it 'can pick from 5 options' do
      options = [
        :rock,
        :paper,
        :scissors,
        :lizard,
        :spock
      ]
      expect(options).to include(subject.move)
    end
  end
end
