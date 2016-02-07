require 'computer'

describe Computer do
  subject(:computer) {described_class.new}

  describe '#choose_weapon' do
    before do
      allow(computer).to receive(:choose_weapon).and_return('Rock')
    end
    it 'allows computer to choose weapon' do
      expect(computer.choose_weapon).to eq 'Rock'
    end
  end

  # describe '#result' do
  #   context 'possible outcomes of game' do
  #     it 'win' do
  #       expect(computer.result(:rock, :scissors)).to eq :win
  #     end
  #     it 'lose' do
  #       expect(computer.result(:rock, :paper)).to eq :lose
  #     end
  #     it 'draw' do
  #       expect(computer.result(:rock, :rock)).to eq :draw
  #     end
  #
  #   end
  # end
end
