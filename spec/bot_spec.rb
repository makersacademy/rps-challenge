require 'bot'

describe Bot do
  subject(:bot)       { described_class.new('ExampleBot', weapon_klass) }
  let(:weapon_klass)  { double :weapon_klass, new: rock }
  let(:rock)          { double :weapon }

  describe '#name' do
    it 'returns the bot\'s name' do
      expect(bot.name).to eq 'ExampleBot'
    end
  end

  describe '#choose_weapon' do
    it 'chooses a random weapon' do
      allow_any_instance_of(Array).to receive(:sample).and_return(:rock)
      bot.choose_weapon
      expect(bot.weapon).to eq rock
    end
  end
end
