require 'pc'

describe Computer do
  subject(:computer) { described_class.new }

  describe '#pc_move' do
    it 'chooses rock' do
      allow(computer).to receive(:pc_move).and_return("rock")
      expect(computer.pc_move).to eq "rock"
    end

    it 'chooses paper' do
      allow(computer).to receive(:pc_move).and_return("paper")
      expect(computer.pc_move).to eq "paper"
    end

    it 'chooses scissors' do
      allow(computer).to receive(:pc_move).and_return("scissors")
      expect(computer.pc_move).to eq "scissors"
    end
  end
end

