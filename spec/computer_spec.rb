require 'computer'

describe Computer do
  let(:bot) { described_class.new(:Computer) }
  describe '#name' do
    it 'assigns a player name when we initialize' do
      expect(bot.name).to eq :Computer
    end
  end
  describe '#hand' do
    it 'initializes the hand value as 0' do
      expect(bot.hand).to eq 0
    end
  end
  describe '#random_hand' do
    it 'changes the value of hand to a random value between 1 and 3' do
      srand(1)
      bot.random_hand
      expect(bot.hand).to eq 2
    end
  end
end
