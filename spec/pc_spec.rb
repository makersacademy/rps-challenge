require 'pc'

describe Computer do
  subject(:computer) { described_class.new }

  describe '#pc_move' do
    it 'can choose rock' do
      # allow(computer).to receive(:pc_move).and_return("rock")
      allow_any_instance_of(Array).to receive(:sample).and_return("rock")
      expect(computer.pc_move).to eq "rock"
    end

    it 'can choose paper' do
      # allow(computer).to receive(:pc_move).and_return("paper")
      allow_any_instance_of(Array).to receive(:sample).and_return("paper")
      expect(computer.pc_move).to eq "paper"
    end

    it 'can choose scissors' do
      # allow(computer).to receive(:pc_move).and_return("scissors")
      allow_any_instance_of(Array).to receive(:sample).and_return("scissors")
      expect(computer.pc_move).to eq "scissors"
    end
  end
end

