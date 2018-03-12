require 'computer'

describe Computer do
  subject(:computer) { described_class.new }

  context '.initialize' do
    it 'on initialize name should equal computer' do
      expect(computer.name).to eq('Computer')
    end

    it 'on initialize action should be random' do
      expect(computer.action).to eq(:paper).or eq(:scissors).or eq(:rock)
    end
  end

  describe '#random_action' do
    it 'receives a valid random action' do
      expect(Computer::DEFAULT_ACTIONS).to include(computer.random_action)
    end
  end
end
