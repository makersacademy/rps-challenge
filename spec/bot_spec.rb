require_relative '../lib/bot'
describe Bot do
  subject(:bot) { described_class.new }
  it 'returns a name' do
    allow(bot).to receive(:name).and_return("Scandium")
    expect(bot.name).to eq "Scandium"
  end
end
