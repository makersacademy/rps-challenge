require 'game'
require 'player'
require 'bot'

describe Game do
  context 'single player game vs. bot' do
    player = Player.new("Test player")
    bot = Bot.new
    subject = Game.new(player, bot)

    

    describe '#rules' do
      it 'says draw if the choices are the same' do
        player.shake("rock")
        srand(0)
        bot.bot_shake
        expect(subject.rules(player, bot)).to eq "Draw"
      end

      it 'declares the player the winner' do
        player.shake("paper")
        srand(0)
        bot.bot_shake
        expect(subject.rules(player, bot)).to eq "Test player is the winner!"
      end

      it 'declares the bot the winner' do
        player.shake("scissors")
        srand(0)
        bot.bot_shake
        expect(subject.rules(player, bot)).to eq "RPS BOT is the winner!"
      end
    end
  end
end
