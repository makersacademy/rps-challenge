require 'bot'

describe Bot do 
  subject(:bot) { described_class.new }

  context '#initialize' do
    it "initializes with a default name" do 
      expect(bot.name).to eq "A Harmless Bot"
    end
  end
end
