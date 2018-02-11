require 'bot'
require 'player'

describe Bot do

  subject(:bot) { described_class.new('bot') }

  describe '#bot extends from Player' do
    it { expect(described_class).to be < Player }
  end

  describe '#random_option' do
    it 'chooses a random option for the computer' do
      expect(bot.options.include?(bot.random_option)).to be true
    end
  end
end