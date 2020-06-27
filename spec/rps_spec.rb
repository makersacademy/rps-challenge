require './lib/rps.rb'

describe 'RPS' do
  subject(:rps) { RPS.new }

  describe '#initialize' do
    it 'creates an instance of RPS' do
      expect(subject).to be_an_instance_of(RPS)
    end

    it 'stores a computer move in a string' do
      expect(subject.comp_move).to be_an_instance_of(String)
    end
  end

  describe '#computer_move' do
    it 'randomly selects the move scissors' do
      srand(4)
      expect(subject.computer_move).to eq('scissors')
    end

    it 'randomly selects the move paper' do
      rand(3)
      expect(subject.computer_move).to eq('paper')
    end

    it 'randomly selects the move rock' do
      rand(2)
      expect(subject.computer_move).to eq('rock')
    end
  end
end
