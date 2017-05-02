require 'computer'

describe Computer do
  let(:bot) { described_class.new(:Computer) }
  describe '#name' do
    it 'assigns a player name when we initialize' do
      expect(bot.name).to eq :Computer
    end
  end

  describe '#random_hand' do
    it 'changes the value of hand to a random value between rock/paper/scissors' do
      srand(1)
      bot.random_hand
      expect(bot.hand).to eq :paper
    end
  end
end
