require 'bot'

describe Bot do

  subject(:bot) { described_class.new }

  describe 'bot picks a random weapon' do
    it 'returns random bot weapon' do
      expect(Bot::WEAPONS).to include bot.random_weapon
    end
  end

end
