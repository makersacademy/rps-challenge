require 'bot'

describe Bot do 
  describe '#move' do 
    it 'returns a valid move' do
      bot = Bot.new
      expect(['rock', 'paper', 'scissors']).to include(bot.move)
    end
  end
end