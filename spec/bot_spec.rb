require 'bot'

describe Bot do
  subject(:bot) { described_class.new }

  describe "#choice" do
    it "selects a random option" do
      expect(Bot::CHOICES).to include bot.choice
    end
  end
end
