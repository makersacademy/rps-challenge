require 'computer.rb'

describe Computer do

  let(:cpu) { described_class.new }

  describe '#name' do
    it 'Should return the name of the computer player' do
      srand(1008)
      expect(cpu.name).to eq 'Donnie finga-slinga'
    end

  end

  describe '#score' do
    it 'Should return the score as a positive number of the computer player' do
      expect(cpu.score).to be >= 0
    end

    it 'Should have a default score at start' do
      expect(cpu.score).to eq Computer::DEFAULT_SCORE
    end

  end

  describe '#win' do
    it 'Should increase the score of the computer player by 1' do
      expect { cpu.win }.to change { cpu.score }.by(1)
    end

  end

end
