require 'bot'

describe Bot do

  describe '#move' do
    let(:bot) { described_class.new }
    it 'returns a move at random' do
      allow(bot).to receive(:rand).and_return(0)
      expect(bot.move).to eq(0)
    end
  end
end
