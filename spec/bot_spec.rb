require 'bot'

describe Bot do
  subject(:bot) { described_class.new }

  describe '#weapon' do
    it 'returns a random weapon' do
      allow_any_instance_of(Array).to receive(:sample).and_return(:rock)
      expect(bot.weapon).to eq :rock
    end
  end
end
