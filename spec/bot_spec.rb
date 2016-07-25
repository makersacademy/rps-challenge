require 'bot'

describe Bot do
  subject(:bot) { described_class.new }

  describe '#choice' do
    it 'selects a random hand gesture' do
      expect([:ROCK, :PAPER, :SCISSORS]).to include bot.choice
    end
  end
end
