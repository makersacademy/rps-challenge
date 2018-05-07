describe Bot do

  subject(:bot) { Bot.new }

  describe '#initialize' do

    it 'randomly picks a choice' do
      expect(bot.choice).to eq("Rock").or(eq("Paper")).or(eq("Scissors"))
    end

  end

end
