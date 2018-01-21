require 'bot'

describe Bot do
  let(:bot) { described_class.new }
  let(:bot2) { described_class.new([:rock, :rock, :rock]) }

  describe 'bot player' do
    it 'bot has an array of moves: rock, paper and scissors' do
      expect(bot.moves).to eq [:rock, :paper, :scissors]
    end
  end

  describe 'move' do
    it 'bot randomly selects from moves' do
      expect(bot2.move).to eq :rock
    end
  end

end
