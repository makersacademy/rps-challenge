require 'computer'
describe Computer do

  let(:computer) { described_class.new }
  let(:moves) { ['rock', 'paper', 'scissors'] }

  describe '#choose_move' do
    moves = %w[rock paper scissors]
    it 'generates a random move' do
      expect(moves).to include(computer.update_rand)
    end

    it 'generates computer\'s move' do
      computer.update_rand
      expect(computer.choice).to include computer.choice
    end
    it 'returns computer\'s random move when rock' do
      allow(Kernel).to receive(:rand) { 0 }
      computer.update_rand
      expect(computer.choice).to eq 'rock'
    end
    it 'returns computer\'s random move when paper' do
      allow(Kernel).to receive(:rand) { 1 }
      computer.update_rand
      expect(computer.choice).to eq 'paper'
    end
    it 'returns computer\'s random move when scissors' do
      allow(Kernel).to receive(:rand) { 2 }
      computer.update_rand
      expect(computer.choice).to eq 'scissors'
    end
  end
end
