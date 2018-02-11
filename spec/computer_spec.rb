describe Computer do

  subject(:computer) { described_class.new }

  describe '#choose' do
    it 'computer can randomise rock as a move' do
      computer.choose
      expect(computer.move).to eq :rock
    end
  end

end
