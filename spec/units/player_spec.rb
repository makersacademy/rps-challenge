require 'player'

describe Player do 
  context 'new' do
    it 'has a name' do
      expect(subject.name).to_not be_nil
    end
  end

  context 'playing' do
    it 'can choose rock, paper or scissors' do
      subject.choose(:rock)
      expect(subject.choice).to eq :rock
    end
  end
end
