require 'bot'

describe Bot do
  subject(:bot) { described_class.new }

  describe "#choice" do
    it "selects a random option" do
      allow(bot).to receive(:choice).and_return("Scissors")
      expect(bot.choice).to eq "Scissors"
    end
  end
end
