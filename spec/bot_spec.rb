require 'bot'

describe Bot do 
  subject(:bot) { described_class.new }

  context '#initialize' do
    it "initializes with a default name" do 
      expect(bot.name).to eq "I am a harmless bot"
    end
  end
end