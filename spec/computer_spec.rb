require 'computer.rb'

describe Computer do
  subject(:computer){described_class.new}

  it 'has name "The Computer"' do
    expect(computer.name).to eq "The Computer"
  end

describe '#move' do
  it 'chooses rock' do
    allow(computer).to receive(:move) { :rock }
    expect(computer.move).to eq :rock
  end
  it 'chooses paper' do
    allow(computer).to receive(:move) { :paper }
    expect(computer.move).to eq :paper
  end
  it 'chooses scissors' do
    allow(computer).to receive(:move) { :scissors }
    expect(computer.move).to eq :scissors
  end
end

  describe '#make_choice' do
    it 'updates choice' do
      allow(computer).to receive(:move) { :rock }
      computer.make_choice(computer.move)
      expect(computer.choice).to eq :rock
    end

    it 'if no move is given, runs passes in self.move ' do
      allow(computer).to receive(:move) { :rock }
      computer.make_choice
      expect(computer.choice).to eq :rock
    end
  end
end
