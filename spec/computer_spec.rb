describe Computer do

  subject(:computer) { described_class.new }

  describe '#choose' do
    it 'computer can randomise rock as a move' do
      srand(2)
      computer.choose
      expect(computer.move).to eq :rock
    end

    it 'computer can randomise paper as a move' do
      srand(1)
      computer.choose
      expect(computer.move).to eq :paper
    end

    it 'computer can randomise scissors as a move' do
      srand(3)
      computer.choose
      expect(computer.move).to eq :scissors
    end
  end

  describe '#tally_score' do
    it 'increases computer\'s score by 1 after victory' do
      expect { computer.tally_score }.to change { computer.score }.by(1)
    end
  end

end
