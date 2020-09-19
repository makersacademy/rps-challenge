require 'bot'
require 'game'

describe Bot do
  bot = Bot.new

  describe '#bot_shake' do
    it 'sets @choice to "rock" from an array' do
      srand(0)
      subject.bot_shake
      expect(subject.choice).to eq "rock"
    end

    it 'sets @choice to "paper" from an array' do
      srand(1)
      subject.bot_shake
      expect(subject.choice).to eq "paper"
    end

    it 'sets @choice to "scissors" from an array' do
      srand(3)
      subject.bot_shake
      expect(subject.choice).to eq "scissors"
    end
  end

end