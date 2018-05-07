require 'bot'

describe Bot do
  describe '#move' do
    let(:bot) { described_class.new }
    it 'returns a move at random' do
      allow_any_instance_of(Bot).to receive(:rand).and_return(0)
      expect(bot.move).to eq(0)
    end
  end
end
