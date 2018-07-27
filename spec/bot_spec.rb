require 'bot'

describe Bot do

  let(:bot) { described_class.new }

  describe '#choice' do
    it { is_expected.to respond_to(:choice) }

    it 'gives rock, paper, or scissors' do
      expect(bot.choice).to eq('Rock').or eq('Paper').or eq('Scissors')
    end
  end

end
