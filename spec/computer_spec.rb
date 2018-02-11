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

end
