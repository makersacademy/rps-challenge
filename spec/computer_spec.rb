require 'computer'

describe Computer do
  subject(:computer) { described_class.new('Computer') }
  subject(:computer_rpsls) { described_class.new('Computer') }

  describe '#comp_choice' do
    it 'randomly picks a move' do
      computer.comp_choice
      expect(['rock', 'paper', 'scissors'].include?(computer.move)).to eq(true)
    end

    it 'randomly picks a move' do
      computer.comp_choice
      expect(['rock', 'paper', 'scissors', 'lizzard', 'spock'].include?(computer.move)).to eq(true)
    end
  end
end
