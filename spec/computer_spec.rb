require './lib/computer.rb'

describe Computer do
  subject(:computer) {described_class.new}

  describe '#Computer Class' do
    it 'random_choice method selects a weapon at random' do
      expect([:rock, :paper, :scissors]).to include(computer.random_choice)
    end

    it 'initializes with a score of 0' do
      expect(computer.score).to eq(0)
    end

    it 'method add_win increments score by 1' do
      expect{computer.add_win}.to change{computer.score}.by(1)
    end
  end

end
